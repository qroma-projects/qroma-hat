import tkinter as tk
from tkinter import filedialog

from dgsr_loader import load_dgsr_file

image_refs = []


def map_gs_to_canvas_color(gs: int):
    num = gs * 16
    gs_color_hex_str = f'{num:02x}'
    return f"#{gs_color_hex_str}{gs_color_hex_str}{gs_color_hex_str}"


def show_dgsr_file(file_path, file_name):
    dgsr_data = load_dgsr_file(file_path)

    dgsr_root = tk.Toplevel()
    dgsr_root.title(file_name)

    canvas = tk.Canvas(dgsr_root, width=dgsr_data.image_width, height=dgsr_data.image_height)
    canvas.pack()

    image = tk.PhotoImage(width=dgsr_data.image_width, height=dgsr_data.image_height)
    image_refs.append(image)    # Keep a reference to the PhotoImage object to prevent it from being garbage collected.

    for index, gs in enumerate(dgsr_data.image_bytes):
        col_index = index % dgsr_data.image_width
        row_index = index // dgsr_data.image_width

        color = map_gs_to_canvas_color(gs)

        image.put(color, (col_index, row_index))

    print("CANVAS - IMAGE CREATED")

    canvas.create_image((0, 0), anchor=tk.NW, image=image)


def select_file():
    file_path = filedialog.askopenfilename(filetypes=[("DGSR files", "*.dgsr")])
    if file_path:
        file_name = file_path.split('/')[-1]
        print("Selected File:")
        print("Name:", file_name)
        print("Path:", file_path)

        show_dgsr_file(file_path, file_name)


# Create the Tkinter application window
root = tk.Tk()

# Create a button to select a file
select_button = tk.Button(root, text="Select DGSR File", command=select_file)
select_button.pack(pady=60)

root.title("Qroma Hat DGSR File Viewer")
root.geometry("400x200")

root.mainloop()
