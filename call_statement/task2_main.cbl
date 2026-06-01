       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task2Main.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 BirthYear PIC 9(4).
       01 userAge PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM A00_ACCEPT_DATA.
           PERFORM B00_CALL_SUB.
           PERFORM C00_DISPLAY_PARA.
           STOP RUN.
       
       A00_ACCEPT_DATA.
           DISPLAY "Enter your Birth year (eg:2001): " WITH NO 
           ADVANCING.
           ACCEPT BirthYear.
       
       B00_CALL_SUB.
           CALL 'Task2Sub' USING BirthYear userAge.
       
       C00_DISPLAY_PARA.
           DISPLAY " -------------------------------- ".
           DISPLAY "Your Birth Year: " BirthYear.
           DISPLAY "Calculated Age: " userAge " years old.".
           DISPLAY " -------------------------------- ".
       END PROGRAM Task2Main.
        