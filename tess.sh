#!/bin/bash

# Define the screenshot folder
screenshot_folder="$HOME/Pictures/Screenshots"

# Create the folder if it doesn't exist
mkdir -p "$screenshot_folder"

# Take a screenshot of a selected area and save it with the current date and time
screenshot_file="screenshot_$(date +%Y%m%d_%H%M%S).png"
gnome-screenshot -a -f "$screenshot_folder/$screenshot_file"

echo "Screenshot saved as: $screenshot_file"

# Output text file name (without extension)
output_file_name="${screenshot_file%.*}"  # Get the base name of the image file (remove extension)
output_text="$screenshot_folder/$output_file_name"

# Check if the input file exists
input_image="$screenshot_folder/$screenshot_file"

if [ ! -f "$input_image" ]; then
    echo "Error: Image file '$input_image' not found!"
    exit 1
fi

# Run Tesseract OCR on the image
tesseract "$input_image" "$output_text" &> /dev/null

# Check if Tesseract ran successfully
if [ $? -eq 0 ]; then
    echo "OCR successful. The extracted text is saved in $output_text.txt."
    
    # Copy the extracted text to the clipboard
    xclip -selection clipboard < "$output_text.txt"
    echo "Extracted text copied to clipboard."
    
    # Delete the screenshot after copying text to clipboard
    rm "$input_image"
    echo "Screenshot deleted."

    # Delete the output text file as well
    rm "$output_text.txt"
    echo "Output text file deleted."

else
    echo "OCR failed. Please check the input image or Tesseract installation."
fi

