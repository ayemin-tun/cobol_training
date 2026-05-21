       IDENTIFICATION DIVISION.
       PROGRAM-ID. Perform_test.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-21.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 counter PIC 9 VALUE 1.
       01 index_val PIC 9 VALUE 1.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM UNTIL counter >5
               DISPLAY "Hello, World! " counter
               ADD 1 To counter 
           END-PERFORM.

           PERFORM 10 TIMES    
               DISPLAY "This is a repeated message."
           END-PERFORM.
          

           PERFORM PROCESS-A THRU process-C.
           
           DISPLAY "------------- loop output ------------"
           PERFORM DISPLAY_LOOP
               VARYING index_val from 1 by 1
               UNTIL index_val>5
           

           STOP RUN.

       process-A.
           DISPLAY "Process A start".
           
       process-B.
           DISPLAY "Process B start".
              
       process-C.
           DISPLAY "Process C start".
       
       process-D.
           DISPLAY "Process D start".

       DISPLAY_LOOP.
           DISPLAY "INDEX: " index_val.

       

       END PROGRAM Perform_test.
        