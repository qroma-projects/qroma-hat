// @generated by protobuf-ts 2.8.2 with parameter use_proto_field_name,generate_dependencies
// @generated from protobuf file "qroma-streams.proto" (syntax proto3)
// tslint:disable
import type { BinaryWriteOptions } from "@protobuf-ts/runtime";
import type { IBinaryWriter } from "@protobuf-ts/runtime";
import { WireType } from "@protobuf-ts/runtime";
import type { BinaryReadOptions } from "@protobuf-ts/runtime";
import type { IBinaryReader } from "@protobuf-ts/runtime";
import { UnknownFieldHandler } from "@protobuf-ts/runtime";
import type { PartialMessage } from "@protobuf-ts/runtime";
import { reflectionMergePartial } from "@protobuf-ts/runtime";
import { MESSAGE_TYPE } from "@protobuf-ts/runtime";
import { MessageType } from "@protobuf-ts/runtime";
import { GetFileStatusCode } from "./qroma-types";
import { FileData } from "./qroma-types";
/**
 * @generated from protobuf message InitWriteFileStreamCommand
 */
export interface InitWriteFileStreamCommand {
    /**
     * @generated from protobuf field: FileData fileData = 1;
     */
    fileData?: FileData;
    /**
     * @generated from protobuf field: uint32 fileStreamId = 2;
     */
    fileStreamId: number;
}
/**
 * @generated from protobuf message InitWriteFileStreamAckResponse
 */
export interface InitWriteFileStreamAckResponse {
    /**
     * @generated from protobuf field: bool success = 1;
     */
    success: boolean;
    /**
     * @generated from protobuf field: uint32 fileStreamId = 2;
     */
    fileStreamId: number;
    /**
     * @generated from protobuf field: string message = 3;
     */
    message: string; // FileData fileData = 4;
}
/**
 * @generated from protobuf message WriteFileStreamCompleteResponse
 */
export interface WriteFileStreamCompleteResponse {
    /**
     * @generated from protobuf field: bool success = 1;
     */
    success: boolean;
    /**
     * @generated from protobuf field: uint32 fileStreamId = 2;
     */
    fileStreamId: number;
    /**
     * @generated from protobuf field: string message = 3;
     */
    message: string;
    /**
     * @generated from protobuf field: FileData fileData = 4;
     */
    fileData?: FileData;
}
/**
 * @generated from protobuf message InitReadFileStreamCommand
 */
export interface InitReadFileStreamCommand {
    /**
     * @generated from protobuf field: string filePath = 1;
     */
    filePath: string;
    /**
     * @generated from protobuf field: uint32 fileStreamId = 2;
     */
    fileStreamId: number;
}
/**
 * @generated from protobuf message InitReadFileStreamAckResponse
 */
export interface InitReadFileStreamAckResponse {
    /**
     * @generated from protobuf field: GetFileStatusCode fileStatus = 1;
     */
    fileStatus: GetFileStatusCode;
    /**
     * @generated from protobuf field: uint32 fileStreamId = 2;
     */
    fileStreamId: number;
    /**
     * @generated from protobuf field: string message = 3;
     */
    message: string;
    /**
     * @generated from protobuf field: FileData fileData = 4;
     */
    fileData?: FileData;
}
/**
 * @generated from protobuf message ReadFileStreamCompleteResponse
 */
export interface ReadFileStreamCompleteResponse {
    /**
     * @generated from protobuf field: bool success = 1;
     */
    success: boolean;
    /**
     * @generated from protobuf field: uint32 fileStreamId = 2;
     */
    fileStreamId: number;
    /**
     * @generated from protobuf field: string message = 3;
     */
    message: string;
    /**
     * @generated from protobuf field: FileData fileData = 4;
     */
    fileData?: FileData;
}
/**
 * @generated from protobuf message QromaStreamCommand
 */
export interface QromaStreamCommand {
    /**
     * @generated from protobuf oneof: command
     */
    command: {
        oneofKind: "initWriteFileStreamCommand";
        /**
         * @generated from protobuf field: InitWriteFileStreamCommand initWriteFileStreamCommand = 1;
         */
        initWriteFileStreamCommand: InitWriteFileStreamCommand;
    } | {
        oneofKind: "initReadFileStreamCommand";
        /**
         * @generated from protobuf field: InitReadFileStreamCommand initReadFileStreamCommand = 2;
         */
        initReadFileStreamCommand: InitReadFileStreamCommand;
    } | {
        oneofKind: undefined;
    };
}
/**
 * @generated from protobuf message QromaStreamResponse
 */
export interface QromaStreamResponse {
    /**
     * @generated from protobuf oneof: response
     */
    response: {
        oneofKind: "initWriteFileStreamAckResponse";
        /**
         * @generated from protobuf field: InitWriteFileStreamAckResponse initWriteFileStreamAckResponse = 1;
         */
        initWriteFileStreamAckResponse: InitWriteFileStreamAckResponse;
    } | {
        oneofKind: "writeFileStreamCompleteResponse";
        /**
         * @generated from protobuf field: WriteFileStreamCompleteResponse writeFileStreamCompleteResponse = 2;
         */
        writeFileStreamCompleteResponse: WriteFileStreamCompleteResponse;
    } | {
        oneofKind: "initReadFileStreamAckResponse";
        /**
         * @generated from protobuf field: InitReadFileStreamAckResponse initReadFileStreamAckResponse = 3;
         */
        initReadFileStreamAckResponse: InitReadFileStreamAckResponse;
    } | {
        oneofKind: "readFileStreamCompleteResponse";
        /**
         * @generated from protobuf field: ReadFileStreamCompleteResponse readFileStreamCompleteResponse = 4;
         */
        readFileStreamCompleteResponse: ReadFileStreamCompleteResponse;
    } | {
        oneofKind: undefined;
    };
}
// @generated message type with reflection information, may provide speed optimized methods
class InitWriteFileStreamCommand$Type extends MessageType<InitWriteFileStreamCommand> {
    constructor() {
        super("InitWriteFileStreamCommand", [
            { no: 1, name: "fileData", kind: "message", T: () => FileData },
            { no: 2, name: "fileStreamId", kind: "scalar", T: 13 /*ScalarType.UINT32*/ }
        ]);
    }
    create(value?: PartialMessage<InitWriteFileStreamCommand>): InitWriteFileStreamCommand {
        const message = { fileStreamId: 0 };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<InitWriteFileStreamCommand>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: InitWriteFileStreamCommand): InitWriteFileStreamCommand {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* FileData fileData */ 1:
                    message.fileData = FileData.internalBinaryRead(reader, reader.uint32(), options, message.fileData);
                    break;
                case /* uint32 fileStreamId */ 2:
                    message.fileStreamId = reader.uint32();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: InitWriteFileStreamCommand, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* FileData fileData = 1; */
        if (message.fileData)
            FileData.internalBinaryWrite(message.fileData, writer.tag(1, WireType.LengthDelimited).fork(), options).join();
        /* uint32 fileStreamId = 2; */
        if (message.fileStreamId !== 0)
            writer.tag(2, WireType.Varint).uint32(message.fileStreamId);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message InitWriteFileStreamCommand
 */
export const InitWriteFileStreamCommand = new InitWriteFileStreamCommand$Type();
// @generated message type with reflection information, may provide speed optimized methods
class InitWriteFileStreamAckResponse$Type extends MessageType<InitWriteFileStreamAckResponse> {
    constructor() {
        super("InitWriteFileStreamAckResponse", [
            { no: 1, name: "success", kind: "scalar", T: 8 /*ScalarType.BOOL*/ },
            { no: 2, name: "fileStreamId", kind: "scalar", T: 13 /*ScalarType.UINT32*/ },
            { no: 3, name: "message", kind: "scalar", T: 9 /*ScalarType.STRING*/ }
        ]);
    }
    create(value?: PartialMessage<InitWriteFileStreamAckResponse>): InitWriteFileStreamAckResponse {
        const message = { success: false, fileStreamId: 0, message: "" };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<InitWriteFileStreamAckResponse>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: InitWriteFileStreamAckResponse): InitWriteFileStreamAckResponse {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* bool success */ 1:
                    message.success = reader.bool();
                    break;
                case /* uint32 fileStreamId */ 2:
                    message.fileStreamId = reader.uint32();
                    break;
                case /* string message */ 3:
                    message.message = reader.string();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: InitWriteFileStreamAckResponse, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* bool success = 1; */
        if (message.success !== false)
            writer.tag(1, WireType.Varint).bool(message.success);
        /* uint32 fileStreamId = 2; */
        if (message.fileStreamId !== 0)
            writer.tag(2, WireType.Varint).uint32(message.fileStreamId);
        /* string message = 3; */
        if (message.message !== "")
            writer.tag(3, WireType.LengthDelimited).string(message.message);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message InitWriteFileStreamAckResponse
 */
export const InitWriteFileStreamAckResponse = new InitWriteFileStreamAckResponse$Type();
// @generated message type with reflection information, may provide speed optimized methods
class WriteFileStreamCompleteResponse$Type extends MessageType<WriteFileStreamCompleteResponse> {
    constructor() {
        super("WriteFileStreamCompleteResponse", [
            { no: 1, name: "success", kind: "scalar", T: 8 /*ScalarType.BOOL*/ },
            { no: 2, name: "fileStreamId", kind: "scalar", T: 13 /*ScalarType.UINT32*/ },
            { no: 3, name: "message", kind: "scalar", T: 9 /*ScalarType.STRING*/ },
            { no: 4, name: "fileData", kind: "message", T: () => FileData }
        ]);
    }
    create(value?: PartialMessage<WriteFileStreamCompleteResponse>): WriteFileStreamCompleteResponse {
        const message = { success: false, fileStreamId: 0, message: "" };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<WriteFileStreamCompleteResponse>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: WriteFileStreamCompleteResponse): WriteFileStreamCompleteResponse {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* bool success */ 1:
                    message.success = reader.bool();
                    break;
                case /* uint32 fileStreamId */ 2:
                    message.fileStreamId = reader.uint32();
                    break;
                case /* string message */ 3:
                    message.message = reader.string();
                    break;
                case /* FileData fileData */ 4:
                    message.fileData = FileData.internalBinaryRead(reader, reader.uint32(), options, message.fileData);
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: WriteFileStreamCompleteResponse, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* bool success = 1; */
        if (message.success !== false)
            writer.tag(1, WireType.Varint).bool(message.success);
        /* uint32 fileStreamId = 2; */
        if (message.fileStreamId !== 0)
            writer.tag(2, WireType.Varint).uint32(message.fileStreamId);
        /* string message = 3; */
        if (message.message !== "")
            writer.tag(3, WireType.LengthDelimited).string(message.message);
        /* FileData fileData = 4; */
        if (message.fileData)
            FileData.internalBinaryWrite(message.fileData, writer.tag(4, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message WriteFileStreamCompleteResponse
 */
export const WriteFileStreamCompleteResponse = new WriteFileStreamCompleteResponse$Type();
// @generated message type with reflection information, may provide speed optimized methods
class InitReadFileStreamCommand$Type extends MessageType<InitReadFileStreamCommand> {
    constructor() {
        super("InitReadFileStreamCommand", [
            { no: 1, name: "filePath", kind: "scalar", T: 9 /*ScalarType.STRING*/ },
            { no: 2, name: "fileStreamId", kind: "scalar", T: 13 /*ScalarType.UINT32*/ }
        ]);
    }
    create(value?: PartialMessage<InitReadFileStreamCommand>): InitReadFileStreamCommand {
        const message = { filePath: "", fileStreamId: 0 };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<InitReadFileStreamCommand>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: InitReadFileStreamCommand): InitReadFileStreamCommand {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* string filePath */ 1:
                    message.filePath = reader.string();
                    break;
                case /* uint32 fileStreamId */ 2:
                    message.fileStreamId = reader.uint32();
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: InitReadFileStreamCommand, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* string filePath = 1; */
        if (message.filePath !== "")
            writer.tag(1, WireType.LengthDelimited).string(message.filePath);
        /* uint32 fileStreamId = 2; */
        if (message.fileStreamId !== 0)
            writer.tag(2, WireType.Varint).uint32(message.fileStreamId);
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message InitReadFileStreamCommand
 */
export const InitReadFileStreamCommand = new InitReadFileStreamCommand$Type();
// @generated message type with reflection information, may provide speed optimized methods
class InitReadFileStreamAckResponse$Type extends MessageType<InitReadFileStreamAckResponse> {
    constructor() {
        super("InitReadFileStreamAckResponse", [
            { no: 1, name: "fileStatus", kind: "enum", T: () => ["GetFileStatusCode", GetFileStatusCode] },
            { no: 2, name: "fileStreamId", kind: "scalar", T: 13 /*ScalarType.UINT32*/ },
            { no: 3, name: "message", kind: "scalar", T: 9 /*ScalarType.STRING*/ },
            { no: 4, name: "fileData", kind: "message", T: () => FileData }
        ]);
    }
    create(value?: PartialMessage<InitReadFileStreamAckResponse>): InitReadFileStreamAckResponse {
        const message = { fileStatus: 0, fileStreamId: 0, message: "" };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<InitReadFileStreamAckResponse>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: InitReadFileStreamAckResponse): InitReadFileStreamAckResponse {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* GetFileStatusCode fileStatus */ 1:
                    message.fileStatus = reader.int32();
                    break;
                case /* uint32 fileStreamId */ 2:
                    message.fileStreamId = reader.uint32();
                    break;
                case /* string message */ 3:
                    message.message = reader.string();
                    break;
                case /* FileData fileData */ 4:
                    message.fileData = FileData.internalBinaryRead(reader, reader.uint32(), options, message.fileData);
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: InitReadFileStreamAckResponse, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* GetFileStatusCode fileStatus = 1; */
        if (message.fileStatus !== 0)
            writer.tag(1, WireType.Varint).int32(message.fileStatus);
        /* uint32 fileStreamId = 2; */
        if (message.fileStreamId !== 0)
            writer.tag(2, WireType.Varint).uint32(message.fileStreamId);
        /* string message = 3; */
        if (message.message !== "")
            writer.tag(3, WireType.LengthDelimited).string(message.message);
        /* FileData fileData = 4; */
        if (message.fileData)
            FileData.internalBinaryWrite(message.fileData, writer.tag(4, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message InitReadFileStreamAckResponse
 */
export const InitReadFileStreamAckResponse = new InitReadFileStreamAckResponse$Type();
// @generated message type with reflection information, may provide speed optimized methods
class ReadFileStreamCompleteResponse$Type extends MessageType<ReadFileStreamCompleteResponse> {
    constructor() {
        super("ReadFileStreamCompleteResponse", [
            { no: 1, name: "success", kind: "scalar", T: 8 /*ScalarType.BOOL*/ },
            { no: 2, name: "fileStreamId", kind: "scalar", T: 13 /*ScalarType.UINT32*/ },
            { no: 3, name: "message", kind: "scalar", T: 9 /*ScalarType.STRING*/ },
            { no: 4, name: "fileData", kind: "message", T: () => FileData }
        ]);
    }
    create(value?: PartialMessage<ReadFileStreamCompleteResponse>): ReadFileStreamCompleteResponse {
        const message = { success: false, fileStreamId: 0, message: "" };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<ReadFileStreamCompleteResponse>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: ReadFileStreamCompleteResponse): ReadFileStreamCompleteResponse {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* bool success */ 1:
                    message.success = reader.bool();
                    break;
                case /* uint32 fileStreamId */ 2:
                    message.fileStreamId = reader.uint32();
                    break;
                case /* string message */ 3:
                    message.message = reader.string();
                    break;
                case /* FileData fileData */ 4:
                    message.fileData = FileData.internalBinaryRead(reader, reader.uint32(), options, message.fileData);
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: ReadFileStreamCompleteResponse, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* bool success = 1; */
        if (message.success !== false)
            writer.tag(1, WireType.Varint).bool(message.success);
        /* uint32 fileStreamId = 2; */
        if (message.fileStreamId !== 0)
            writer.tag(2, WireType.Varint).uint32(message.fileStreamId);
        /* string message = 3; */
        if (message.message !== "")
            writer.tag(3, WireType.LengthDelimited).string(message.message);
        /* FileData fileData = 4; */
        if (message.fileData)
            FileData.internalBinaryWrite(message.fileData, writer.tag(4, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message ReadFileStreamCompleteResponse
 */
export const ReadFileStreamCompleteResponse = new ReadFileStreamCompleteResponse$Type();
// @generated message type with reflection information, may provide speed optimized methods
class QromaStreamCommand$Type extends MessageType<QromaStreamCommand> {
    constructor() {
        super("QromaStreamCommand", [
            { no: 1, name: "initWriteFileStreamCommand", kind: "message", oneof: "command", T: () => InitWriteFileStreamCommand },
            { no: 2, name: "initReadFileStreamCommand", kind: "message", oneof: "command", T: () => InitReadFileStreamCommand }
        ]);
    }
    create(value?: PartialMessage<QromaStreamCommand>): QromaStreamCommand {
        const message = { command: { oneofKind: undefined } };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<QromaStreamCommand>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: QromaStreamCommand): QromaStreamCommand {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* InitWriteFileStreamCommand initWriteFileStreamCommand */ 1:
                    message.command = {
                        oneofKind: "initWriteFileStreamCommand",
                        initWriteFileStreamCommand: InitWriteFileStreamCommand.internalBinaryRead(reader, reader.uint32(), options, (message.command as any).initWriteFileStreamCommand)
                    };
                    break;
                case /* InitReadFileStreamCommand initReadFileStreamCommand */ 2:
                    message.command = {
                        oneofKind: "initReadFileStreamCommand",
                        initReadFileStreamCommand: InitReadFileStreamCommand.internalBinaryRead(reader, reader.uint32(), options, (message.command as any).initReadFileStreamCommand)
                    };
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: QromaStreamCommand, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* InitWriteFileStreamCommand initWriteFileStreamCommand = 1; */
        if (message.command.oneofKind === "initWriteFileStreamCommand")
            InitWriteFileStreamCommand.internalBinaryWrite(message.command.initWriteFileStreamCommand, writer.tag(1, WireType.LengthDelimited).fork(), options).join();
        /* InitReadFileStreamCommand initReadFileStreamCommand = 2; */
        if (message.command.oneofKind === "initReadFileStreamCommand")
            InitReadFileStreamCommand.internalBinaryWrite(message.command.initReadFileStreamCommand, writer.tag(2, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message QromaStreamCommand
 */
export const QromaStreamCommand = new QromaStreamCommand$Type();
// @generated message type with reflection information, may provide speed optimized methods
class QromaStreamResponse$Type extends MessageType<QromaStreamResponse> {
    constructor() {
        super("QromaStreamResponse", [
            { no: 1, name: "initWriteFileStreamAckResponse", kind: "message", oneof: "response", T: () => InitWriteFileStreamAckResponse },
            { no: 2, name: "writeFileStreamCompleteResponse", kind: "message", oneof: "response", T: () => WriteFileStreamCompleteResponse },
            { no: 3, name: "initReadFileStreamAckResponse", kind: "message", oneof: "response", T: () => InitReadFileStreamAckResponse },
            { no: 4, name: "readFileStreamCompleteResponse", kind: "message", oneof: "response", T: () => ReadFileStreamCompleteResponse }
        ]);
    }
    create(value?: PartialMessage<QromaStreamResponse>): QromaStreamResponse {
        const message = { response: { oneofKind: undefined } };
        globalThis.Object.defineProperty(message, MESSAGE_TYPE, { enumerable: false, value: this });
        if (value !== undefined)
            reflectionMergePartial<QromaStreamResponse>(this, message, value);
        return message;
    }
    internalBinaryRead(reader: IBinaryReader, length: number, options: BinaryReadOptions, target?: QromaStreamResponse): QromaStreamResponse {
        let message = target ?? this.create(), end = reader.pos + length;
        while (reader.pos < end) {
            let [fieldNo, wireType] = reader.tag();
            switch (fieldNo) {
                case /* InitWriteFileStreamAckResponse initWriteFileStreamAckResponse */ 1:
                    message.response = {
                        oneofKind: "initWriteFileStreamAckResponse",
                        initWriteFileStreamAckResponse: InitWriteFileStreamAckResponse.internalBinaryRead(reader, reader.uint32(), options, (message.response as any).initWriteFileStreamAckResponse)
                    };
                    break;
                case /* WriteFileStreamCompleteResponse writeFileStreamCompleteResponse */ 2:
                    message.response = {
                        oneofKind: "writeFileStreamCompleteResponse",
                        writeFileStreamCompleteResponse: WriteFileStreamCompleteResponse.internalBinaryRead(reader, reader.uint32(), options, (message.response as any).writeFileStreamCompleteResponse)
                    };
                    break;
                case /* InitReadFileStreamAckResponse initReadFileStreamAckResponse */ 3:
                    message.response = {
                        oneofKind: "initReadFileStreamAckResponse",
                        initReadFileStreamAckResponse: InitReadFileStreamAckResponse.internalBinaryRead(reader, reader.uint32(), options, (message.response as any).initReadFileStreamAckResponse)
                    };
                    break;
                case /* ReadFileStreamCompleteResponse readFileStreamCompleteResponse */ 4:
                    message.response = {
                        oneofKind: "readFileStreamCompleteResponse",
                        readFileStreamCompleteResponse: ReadFileStreamCompleteResponse.internalBinaryRead(reader, reader.uint32(), options, (message.response as any).readFileStreamCompleteResponse)
                    };
                    break;
                default:
                    let u = options.readUnknownField;
                    if (u === "throw")
                        throw new globalThis.Error(`Unknown field ${fieldNo} (wire type ${wireType}) for ${this.typeName}`);
                    let d = reader.skip(wireType);
                    if (u !== false)
                        (u === true ? UnknownFieldHandler.onRead : u)(this.typeName, message, fieldNo, wireType, d);
            }
        }
        return message;
    }
    internalBinaryWrite(message: QromaStreamResponse, writer: IBinaryWriter, options: BinaryWriteOptions): IBinaryWriter {
        /* InitWriteFileStreamAckResponse initWriteFileStreamAckResponse = 1; */
        if (message.response.oneofKind === "initWriteFileStreamAckResponse")
            InitWriteFileStreamAckResponse.internalBinaryWrite(message.response.initWriteFileStreamAckResponse, writer.tag(1, WireType.LengthDelimited).fork(), options).join();
        /* WriteFileStreamCompleteResponse writeFileStreamCompleteResponse = 2; */
        if (message.response.oneofKind === "writeFileStreamCompleteResponse")
            WriteFileStreamCompleteResponse.internalBinaryWrite(message.response.writeFileStreamCompleteResponse, writer.tag(2, WireType.LengthDelimited).fork(), options).join();
        /* InitReadFileStreamAckResponse initReadFileStreamAckResponse = 3; */
        if (message.response.oneofKind === "initReadFileStreamAckResponse")
            InitReadFileStreamAckResponse.internalBinaryWrite(message.response.initReadFileStreamAckResponse, writer.tag(3, WireType.LengthDelimited).fork(), options).join();
        /* ReadFileStreamCompleteResponse readFileStreamCompleteResponse = 4; */
        if (message.response.oneofKind === "readFileStreamCompleteResponse")
            ReadFileStreamCompleteResponse.internalBinaryWrite(message.response.readFileStreamCompleteResponse, writer.tag(4, WireType.LengthDelimited).fork(), options).join();
        let u = options.writeUnknownFields;
        if (u !== false)
            (u == true ? UnknownFieldHandler.onWrite : u)(this.typeName, message, writer);
        return writer;
    }
}
/**
 * @generated MessageType for protobuf message QromaStreamResponse
 */
export const QromaStreamResponse = new QromaStreamResponse$Type();