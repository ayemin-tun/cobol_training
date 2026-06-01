       IDENTIFICATION DIVISION.
       PROGRAM-ID. main_Program.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num1 PIC 9(5).
       01 num2 PIC 9(5).
       01 result PIC 9(6).
       01 product PIC 9(10).
       01 subName PIC X(12) VALUE "sub_program".
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter first num: " WITH NO ADVANCING.
           ACCEPT num1.
           DISPLAY "Enter second num: " WITH NO ADVANCING.
           ACCEPT num2.

           CALL subName USING num1 num2 result product 
           END-CALL.

           DISPLAY "The sum of " num1 " and " num2 " is: " result .
           DISPLAY "The Product of " num1 " and " num2 " is: " 
           product.
           
           STOP RUN.
       END PROGRAM main_Program.
        