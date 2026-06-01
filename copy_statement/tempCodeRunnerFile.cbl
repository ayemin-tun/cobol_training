       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main_pgm.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-29.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       COPY employee_record REPLACING ==Employee-== By ==Manager-==.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "AMT" TO Manager-name
           DISPLAY "Employee Name: " Manager-name
           DISPLAY "hello world "
           STOP RUN.
       END PROGRAM Main_pgm.
        