       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task1_Redefine.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-23.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NumField PIC 9(5) VALUE 12345.
       01 CharField REDEFINES NumField PIC X(10).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "======= Task1: Redefine =======".
           DISPLAY "NumField: " NumField.
           DISPLAY "CharField: " CharField.
           STOP RUN.
       END PROGRAM Task1_Redefine.
        