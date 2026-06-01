       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main_Pgm.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 InputValue PIC 9(4).
       01 OutputValue PIC 9(4).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter a number: " WITH NO ADVANCING.
           ACCEPT InputValue.
           CALL 'Sub_Pgm' USING InputValue OutputValue
           DISPLAY "Double value: " OutputValue.  
           STOP RUN.
       END PROGRAM Main_Pgm.
        