      ******************************************************************
      * Author:Aye Min Tun
      * Date:may 11,
      * Purpose:test
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. variable.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  Name PIC X(20) VALUE "AMT".
       01  Age PIC 9(2) VALUE 30.
       01  Salary PIC 9(6)V99 VALUE 140000.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Name: " Name.
            DISPLAY "Age: " Age.
            DISPLAY "Salary $: " Salary.
            STOP RUN.
