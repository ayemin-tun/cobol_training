       IDENTIFICATION DIVISION.
       PROGRAM-ID. Redefine_statement.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-22.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num_field PIC 9(4) VALUE 1234.
       01 char_field REDEFINES num_field PIC X(9).

       01 Group_field.
           05 fieldA PIC 9(2).
           05 fieldB PIC 9(2).
       01 Redifine_field REDEFINES Group_field PIC X(4).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Num Field: " num_field.
           DISPLAY "Char Field: " char_field.

           MOVE 5678 to Redifine_field.
           DISPLAY "Field A: " fieldA.
           DISPLAY "Field B: " fieldB.
           STOP RUN.
       END PROGRAM Redefine_statement.
        