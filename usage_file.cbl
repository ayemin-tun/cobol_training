      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS_NUM1 USAGE DISPLAY PIC 9(5) VALUE 12456.
       01 WS_NUM2 USAGE COMP PIC S9(5) VALUE 13956.
       01 WS_NUM3 USAGE COMP-3 PIC 9(5) VALUE 32489.
       01 Ph_No PIC 9(10).
       01 add_val PIC A(12) VALUE "YANGON".
       01 email PIC X(19).
       01 Employee_salary PIC 9(7)V99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world".
            DISPLAY WS_NUM1.
            DISPLAY WS_NUM2.
            DISPLAY WS_NUM3.
            DISPLAY Ph_No.
            DISPLAY add_val  "HEADING ".
            DISPLAY email.
            DISPLAY Employee_salary.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
