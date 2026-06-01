       IDENTIFICATION DIVISION.
       PROGRAM-ID. Paragraph_cobol.
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
           DISPLAY "Paragraph Example".
           DISPLAY " ---------------- "
           PERFORM INIT_PROCESS.
           PERFORM CALCULATE_RES.
           PERFORM DISPLAY_RES.
           STOP RUN.
       
       INIT_PROCESS.
           MOVE 10 TO num1.
           MOVE 10 TO num2.

       CALCULATE_RES.
           ADD num1 TO num2 GIVING result.

       DISPLAY_RES.
           DISPLAY "The sum of " num1 " and " num2 " is: " result.
       END PROGRAM Paragraph_cobol.
        