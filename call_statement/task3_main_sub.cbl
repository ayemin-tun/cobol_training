       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3Main.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num1 PIC 9(3).
       01 num2 PIC 9(3).
       01 resultSum PIC 9(4).
       01 resultProd PIC 9(6).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       A00_MAIN_CONTROL.
           PERFORM B00_INPUT_PARA.
           PERFORM C00_PROCESS_PARA.
           PERFORM D00_DISPLAY_PARA.
           STOP RUN.
       
       B00_INPUT_PARA.
           DISPLAY "---- Input Paragraph ----".
           DISPLAY "Enter Num1: " WITH NO ADVANCING.
           ACCEPT num1.
           DISPLAY "Enter Num2: " WITH NO ADVANCING.
           ACCEPT num2.
           DISPLAY " ".
       
       C00_PROCESS_PARA.
           DISPLAY "---- Processing Paragraph ----".
           DISPLAY "Calling sub program for calculation ...".
           CALL 'Task3Sub' USING num1 num2 resultSum resultProd.
           DISPLAY "Return from sub program successfully ....".
           DISPLAY " ".
       
       D00_DISPLAY_PARA.
           DISPLAY "---- Output Paragraph ----".
           DISPLAY "Num1: " num1.
           DISPLAY "Num2: " num2.
           DISPLAY " ------------- "
           DISPLAY "Calculated Sum: " resultSum.
           DISPLAY "Calculated Product: " resultProd.


       END PROGRAM Task3Main.
        