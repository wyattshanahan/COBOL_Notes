       IDENTIFICATION DIVISION.
       PROGRAM-ID. "GREETUSER".
       AUTHOR.     WYATT SHANAHAN.
      * CH1_06 Program to take input and greet user
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME PIC A(20).
     
       PROCEDURE DIVISION. 
           001-MAIN.
               DISPLAY "Please enter your name: ".
               ACCEPT NAME.
               DISPLAY "Bonjour, ", NAME.
       STOP RUN.
       END PROGRAM GREETUSER.
