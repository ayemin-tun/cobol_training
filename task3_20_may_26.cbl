       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3_if_then_else.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-20.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 age_input PIC 9(3).
       01 ws_cost PIC 9(2).
       01 format_cost PIC $ZZ9.99.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter your age: " WITH NO ADVANCING.
           ACCEPT age_input.

           IF age_input <18 THEN
               DISPLAY "Status: Your are a Minor"
               MOVE 10 TO ws_cost
           ELSE IF age_input >=18 AND age_input<=60 THEN
               DISPLAY "Status: Your are an Adult"
               MOVE 20 TO ws_cost
           ELSE
               DISPLAY "Status: Your are a Senior"
               MOVE 15 TO ws_cost
           END-IF.

           MOVE ws_cost TO format_cost.
           DISPLAY "Calculated Cost: " format_cost.
           STOP RUN.
       END PROGRAM Task3_if_then_else.
        