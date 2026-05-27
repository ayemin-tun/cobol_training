       IDENTIFICATION DIVISION.
       PROGRAM-ID. continue_task.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-26.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 loop_counter PIC 9 VALUE 0.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Continue statement task".

           PERFORM VARYING loop_counter FROM 1 BY 1
               UNTIL loop_counter >5

               IF loop_counter = 3 THEN 
                   DISPLAY "Continue Trigger->" loop_counter
                   CONTINUE
               ELSE 
                   DISPLAY "Process Iteration normally->" loop_counter
               END-IF
           END-PERFORM.

           DISPLAY "Loop Complete successfully!"
           STOP RUN.
       END PROGRAM continue_task.
        