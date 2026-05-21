       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task2_looping_statement.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-21.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 counter PIC 9 VALUE 1.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Looping Counter!".
           PERFORM UNTIL counter >5    
               DISPLAY "Number: " counter
               ADD 1 to counter
           END-PERFORM.
           STOP RUN.
       END PROGRAM Task2_looping_statement.
        