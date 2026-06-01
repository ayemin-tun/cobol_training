       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task1_paragraph.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num1 PIC 9(2) VALUE 0.
       01 num2 PIC 9(2) VALUE 0.
       01 result PIC 9(4) VALUE 0.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Task1- Paragraph".
           DISPLAY " --------------- ".
           PERFORM INIT_PROCESS.
           PERFORM CALCULATE_PROCESS.
           PERFORM DISPLAY_PROCESS.
           
           STOP RUN.

       INIT_PROCESS.
           MOVE 10 TO num1.
           MOVE 20 TO num2.
       
       CALCULATE_PROCESS.
           COMPUTE result = num1 + num2.

       DISPLAY_PROCESS.
           DISPLAY "The Sun of " num1 " and " num2 " is: " result.
       END PROGRAM Task1_paragraph.
        
