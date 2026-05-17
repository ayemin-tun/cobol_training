       IDENTIFICATION DIVISION.
       PROGRAM-ID. Basic_Example.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-13.
      
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(20) VALUE "Jhone Doe".
       01 UserAge PIC 9(2) VALUE 30.
       01 UserSalary PIC 9(7)V99.
       01 formatSalary PIC ZZZZZ9.99.
      
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           Move 50000.75 to UserSalary.
           MOVE UserSalary to formatSalary.
           DISPLAY "User Information".
           DISPLAY "Name:" UserName.
           DISPLAY "Age:" UserAge.
           DISPLAY "Salary:$ " formatSalary.
           STOP RUN.
       END  PROGRAM Basic_Example.
       