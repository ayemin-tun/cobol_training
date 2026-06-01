       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACC-MAIN.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-29.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       COPY acc-rec.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter Account Number: " WITH NO ADVANCING.
           ACCEPT ACCOUNT-NUMBER.
           DISPLAY "Enter Holder Name: " WITH NO ADVANCING.
           ACCEPT ACCOUNT-HOLDER-NAME.
           DISPLAY "Enter Balance: " WITH NO ADVANCING.
           ACCEPT ACCOUNT-BALANCE.

           DISPLAY "ACCOUNT INFORMATION".
           DISPLAY "--------------------".
           DISPLAY "Account Number: " ACCOUNT-NUMBER.
           DISPLAY "Holder Name: " ACCOUNT-HOLDER-NAME.
           DISPLAY "Balance: " ACCOUNT-BALANCE.
           DISPLAY "Salary: " SALARY.
           
           
           STOP RUN.
       END PROGRAM ACC-MAIN.
        