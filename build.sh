#!/bin/bash

# Bash LaTeX compilation script 
# Compiles either main.tex or main_solutions.tex

echo "LaTeX Document Compiler"
echo "======================="
echo
echo "Which file would you like to compile?"
echo "1) Without solutions"
echo "2) With solutions"
echo
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        filename="main.tex"
        ;;
    2)
        filename="main_solutions.tex"
        ;;
    *)
        echo "Invalid choice. Please run the script again and select 1 or 2."
        exit 1
        ;;
esac

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: $filename not found in the current directory."
    exit 1
fi

echo
echo "Compiling $filename..."
echo "========================"

# Compile with pdflatex (run twice for proper references)
pdflatex "$filename"
if [ $? -eq 0 ]; then
    echo
    echo "Compilation successful!"
    
    # Get the PDF filename (replace .tex with .pdf)
    pdfname="${filename%.tex}.pdf"
    
    # Clean up auxiliary files
    read -p "Would you like to clean up auxiliary files? (y/n): " clean_choice
    if [[ $clean_choice =~ ^[Yy]$ ]]; then
        rm -f *.aux *.log *.out *.toc *.nav *.snm *.fls *.fdb_latexmk
        echo "Auxiliary files cleaned up."
    fi

    open "$pdfname"        
else
    echo "Compilation failed. Check the output above for errors."
    exit 1
fi