       IDENTIFICATION DIVISION.
       PROGRAM-ID. task1.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-14.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 age PIC 9(2).
       01 emp_name PIC A(3).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter Your Name".
           Accept emp_name.
           DISPLAY "Enter Your Age".
           Accept age.

           DISPLAY "Hello " emp_name ",you are " age " years old.".
           STOP RUN.
       END PROGRAM task1.
        