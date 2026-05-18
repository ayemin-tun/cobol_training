       IDENTIFICATION DIVISION.
       PROGRAM-ID. task2_arithmetic_operations.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-18.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num1 PIC 9(2).
       01 num2 PIC 9(2).
       01 result PIC 9(5).
       01 remainder_res PIC 9(5).

       01 format_display PIC Z(3).
       01 format_remainder PIC Z(3).

       01 rc_length PIC 9(2).
       01 rc_width PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "--- Perform Arithmetic Operations ---".
           DISPLAY "Enter first number: " WITH NO ADVANCING.
           ACCEPT num1.
           DISPLAY "Enter second number: " WITH NO ADVANCING.
           ACCEPT num2.

           ADD num1 TO num2 GIVING result.
           MOVE result to format_display.
           DISPLAY "Addition Result: " format_display.

           SUBTRACT num2 FROM num1 GIVING result.
           MOVE result to format_display.
           DISPLAY "Subtraction Result: " format_display.

           MULTIPLY num1 BY num2 GIVING result.
           MOVE result to format_display.
           DISPLAY "Multiplication Result: " format_display.

           DIVIDE num1 INTO num2 GIVING result REMAINDER remainder_res.
           MOVE result to format_display.
           MOVE remainder_res to format_remainder.
           DISPLAY "Division Result: " format_display.
           DISPLAY "Remainder: " format_remainder.
           DISPLAY "  ".
           
           DISPLAY " ------- calculate Rectangle Area ---------".
           DISPLAY "Enter length of the rectangle: " WITH NO ADVANCING.
           ACCEPT rc_length.
           DISPLAY "Enter width of the rectangle: " WITH NO ADVANCING.
           ACCEPT rc_width.

           COMPUTE result = rc_length * rc_width.
           MOVE result to format_display.
           DISPLAY "Area of the rectangle: " format_display.
           STOP RUN.
       
       
       END PROGRAM task2_arithmetic_operations.
        