       IDENTIFICATION DIVISION.
       PROGRAM-ID. "BMICAL".
       AUTHOR.     WYATT SHANAHAN.
      * CH01_07 BMI Calculator
       ENVIRONMENT DIVISION.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 HEIGHT PIC 999.
           01 WEIGHT PIC 9999.
           01 BMI    PIC 99V99.
         
       PROCEDURE DIVISION. 
           001-MAIN.
               DISPLAY "Enter your height in inches: ".
               ACCEPT HEIGHT.
               DISPLAY "Enter your weight in pounds: ".
               ACCEPT WEIGHT.
               COMPUTE BMI = WEIGHT * 703/(HEIGHT*HEIGHT).
               DISPLAY "Your BMI is: ", BMI, "%".
               
       STOP RUN.
       END PROGRAM BMICAL.
