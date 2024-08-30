30 August 2024

# Getting Started and COBOL Basics

- Using WSL and GNUCOBOL to compile and execute the COBOL code locally
- Use ``cobc -x file.cbl`` to compile the code into an executable in GNU Cobol
- Use ./file to run the executable
- A good reference resource is the [GNU COBOL Programmer's Guide](https://gnucobol.sourceforge.io/HTML/gnucobpg.html)

## Syntax

- End statements with a period
- Cols 1-6 are sequence/line numbers
- Col 7 should be left blank, unless used to comment out a line with an asterisk
- Cols 8-11 (A Margin) is used for headers, divisions, etc
- Cols 12-72 (B Margin) is used for executable statements

## Obtaining User Input

- We need to define a variable in the WORKING-STORAGE section of the DATA DIVISION
- We will use an ACCEPT statement to accept input from the user and store it in our variable
- Start out with 01 as our first variable level number
- We define the type and amount of data stored in variable using a PIC clause
  - Example is ``01 Name PIC A(20`` which stores 20 Alpha characters into Name
- To concatenate user input when DISPLAY is used, use a comma like below:
  - ``DISPLAY "Bonjour, ", NAME.``
