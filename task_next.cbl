       IDENTIFICATION DIVISION.
       PROGRAM-ID. Next_task.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-26.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 counter PIC 9 VALUE 2.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "------------------------------------".
           PERFORM Check-Condition-Para.
           PERFORM Next-Para.
           STOP RUN.
       
       Check-Condition-Para.
           DISPLAY "[1] Entered Check-Condition-Para."
           PERFORM VARYING counter FROM 1 BY 1 UNTIL counter>5
               IF counter = 3
                   DISPLAY "Condition Met! My-Counter is 3."
                   NEXT SENTENCE  
               ELSE
                   DISPLAY "Otherwise: Condition Not Met. C " counter
               END-If
           END-PERFORM

               DISPLAY "[2] This line SKIPPED if counter is 3.".
           
       Next-Para.
           DISPLAY "-----------------------------------------".
           DISPLAY "[3] Entered Next-Para successfully!".
           DISPLAY "Control flow continues with the next paragraph.".

       END PROGRAM Next_task.
        