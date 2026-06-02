       IDENTIFICATION DIVISION.
       PROGRAM-ID. task1.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-18.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 user_name.
           05 first_name PIC A(4).
           05 last_name PIC A(3).
       
       01 format_name.
           05 formatted_first_name PIC A(4).
           05 space_between PIC X VALUE " ".
           05 formatted_last_name PIC A(3).
       01 input_age PIC 9(2).

       01 WS-CALC-AGE          PIC 9(03).
       01 WS-AGE-GROUP-COST    PIC 9(06) VALUE 0.
       01 WS-DISPLAY-COST      PIC ZZZ,ZZ9.99.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter your first name: ".
           ACCEPT first_name.
           DISPLAY "Enter your last name: ".
           ACCEPT last_name.
           DISPLAY "Enter your age: ".
           ACCEPT input_age.

           MOVE first_name TO formatted_first_name.
           MOVE last_name TO formatted_last_name.
           
           DISPLAY "------------- USER INFORMATION-------------".
           DISPLAY "Name: " format_name.
           DISPLAY "Age: " input_age " year old".
           
           MOVE input_age TO WS-CALC-AGE.
           IF input_age >= 60 THEN
               COMPUTE WS-AGE-GROUP-COST = WS-CALC-AGE * 1500
           ELSE
               COMPUTE WS-AGE-GROUP-COST = WS-CALC-AGE * 1000
           END-IF.

           MOVE WS-AGE-GROUP-COST TO WS-DISPLAY-COST.
           DISPLAY "Calculated Age Group Cost: " WS-DISPLAY-COST " MMK".
           DISPLAY "------------------------------------".

       
           
           
           STOP RUN.
       END PROGRAM task1.
        