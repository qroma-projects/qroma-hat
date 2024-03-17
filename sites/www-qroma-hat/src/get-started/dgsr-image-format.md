---
title: Devalbo Grayscale Run Image Format
---

### Overview
* Specification Version 1.0 as of 2023-02-05
* Copyright 2023 - [Devalbo](https://www.devalbo.com)

Inspired by https://qoiformat.org/qoi-specification.pdf

*This format was developed to compress grayscale images for e-ink screens using simple, reasonable implementations in both firmware and Javascript/Typescript implementations for the Qroma Hat project.*

### Details

A Devalbo Grayscale Run (DGSR) image file consists of a `dgsr_header`, followed by any number of *data chunks*, and an 8-byte end marker.

```
dgsr_header {
  char magic[4];            // 4 magic bytes "dgsr"
  uint32_t width;           // image width in pixels (4 bytes - BE)
  uint32_t height;          // image height in pixels (4 bytes - BE)
};
```

Images are encoded row by row, left to right, top to bottom, wrapping to the next line when the row's width has been exceeded. The decoder and encoder start with 0 as the previous pixel value. An image is complete when all pixels specified by `width x height` have been covered. 

Grayscale pixels are encoded with *data chunks* as:
* `DGSR_OP_PLACE_PIXEL` - place a single grayscale pixel (level 0-63)
* `DGSR_OP_SHORT_RUN` - start a short run of the previous pixel (uses 6 bits of op code byte, 0-63 pixels)
* `DGSR_OP_MEDIUM_RUN` - start a medium run of the previous pixel (uses 6 bits of op code byte, plus following 1 byte, treated as two bytes without the top 2 most significant bits)
* `DGSR_OP_LONG_RUN` - start a long run of the previous pixel (uses 6 bits of op code byte, plus following 3 bytes, treated as four bytes without the top 2 most significant bits)

The byte stream's end is marked with 7 `0x00` bytes followed by a single `0x01` byte.

Possible *data chunks* are:

```
DGSR_OP_PLACE_PIXEL
DGSR_OP_SHORT_RUN
DGSR_OP_MEDIUM_RUN
DGSR_OP_LONG_RUN


┌─ DGSR_OP_PLACE_PIXEL ──┐
│        Byte[0]         │
│ 7  6  5  4  3  2  1  0 │
│────────────────────────│
│ 0  0 │  GS bits (0-63) │
└────────────────────────┘


┌─ DGSR_OP_SHORT_RUN ────┐
│        Byte[0]         │
│ 7  6  5  4  3  2  1  0 │
│────────────────────────│
│ 0  1 │  Run length     │
└────────────────────────┘


┌─ DGSR_OP_MEDIUM_RUN ───┬─────────┐
│        Byte[0]         │ Byte[1] │
│ 7  6  5  4  3  2  1  0 │ 7 .. 0  │
│────────────────────────┼─────────│
│ 1  0 │  Run length bits (14)     │
└────────────────────────┴─────────┘


┌─ DGSR_OP_LONG_RUN ─────┬─────────┬─────────┬─────────┐
│        Byte[0]         │ Byte[1] │ Byte[2] │ Byte[3] │
│ 7  6  5  4  3  2  1  0 │ 7 .. 0  │ 7 .. 0  │ 7 .. 0  │
│────────────────────────┼─────────┼─────────┼─────────│
│ 1  1 │  Run length bits (30)                         │
└────────────────────────┴─────────┴─────────┴─────────┘
```

### ImHex Pattern (dgsr.hexpat)

[https://github.com/WerWolv/ImHex](https://github.com/WerWolv/ImHex)

```
#pragma description DGSR (Devalbo Grayscale Run image format)

#pragma endian big

import type.magic;
import type.size;

import std.mem;


struct DgsrHeader {
  type::Magic<"\x64\x67\x73\x72"> magic;
  be u32 width;
  be u32 height;
};


fn find_op_codes_start() {
  return std::mem::size() - 12;
};

fn get_op_codes_length() {
  return std::mem::size() - (12 + 8);
};

fn get_final_bytes_start() {
  return std::mem::size() - 8;
};

u32 opCodesStart = find_op_codes_start();
u32 opCodesLength = get_op_codes_length();
u32 finalBytesStart = get_final_bytes_start();

enum OpCodeType : u8 {
  PlacePixel = 0b00000000 ... 0b00111111,
  ShortRun   = 0b01000000 ... 0b01111111,
  MediumRun  = 0b10000000 ... 0b10111111,
  LongRun    = 0b11000000 ... 0b11111111
};


bitfield OpCodePlacePixel {
  opcode : 2;
  grayscale: 6;
};

bitfield OpCodeShortRun {
  opcode : 2;
  shortRunLength: 6;
};

bitfield OpCodeMediumRun {
  opcode : 2;
  mediumRunLength: 14;
};

bitfield OpCodeLongRun {
  opcode : 2;
  longRunLength: 30;
};


u8 opCodeDef;
fn get_opCodeDef() {
    opCodeDef = std::mem::read_unsigned($, 1);
    opCodeDef &= 0b11000000;
};

struct OpCode {
    get_opCodeDef();
    if      (opCodeDef == OpCodeType::PlacePixel) OpCodePlacePixel;
    else if (opCodeDef == OpCodeType::ShortRun)  OpCodeShortRun;
    else if (opCodeDef == OpCodeType::MediumRun)  OpCodeMediumRun;
    else if (opCodeDef == OpCodeType::LongRun)   OpCodeLongRun;
};

struct FinalBytes {
  u8 f1  [[name("fb1")]];
	u8 f2  [[name("fb2")]];
	u8 f3  [[name("fb3")]];
	u8 f4  [[name("fb4")]];
	u8 f5  [[name("fb5")]];
	u8 f6  [[name("fb6")]];
	u8 f7  [[name("fb7")]];
	u8 f8  [[name("fb8")]];
};


struct DgsrFile {
  DgsrHeader header;
  // OpCode opCodes[while(!std::mem::eof())];
	OpCode opCodes[while($ < finalBytesStart)];
  FinalBytes finalBytes;
};


DgsrFile dgsrFile @ 0 [[name("dgsr")]];
```