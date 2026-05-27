       IDENTIFICATION DIVISION.
       PROGRAM-ID. GOTO_sta.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-25.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Step 1".
           GO TO Next_step.
           DISPLAY "The step will be skipped"

           STOP RUN.    
       Next_step.
           DISPLAY "Next step".
       END PROGRAM GOTO_sta.
        