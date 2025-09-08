#!/bin/bash

# Prompt the user to enter the filename
echo "Enter the filename:"
read filename

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Get the number of lines
lines=$(wc -l < "$filename")
# Get the number of words
words=$(wc -w < "$filename")
# Get the number of characters
characters=$(wc -m < "$filename")

# Print the results
echo "File: $filename"
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $characters"
