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
       01 Quantity PIC 9(4) VALUE 2000.
       01 signNum  PIC S9(2) VALUE -50.
       01 decNum   PIC 9(4)V99 VALUE 1234.45.
       01 packDec  PIC S9(4)V99 COMP-3 VALUE -1234.55.
       01 alpheVal PIC A(11) VALUE 'Hello world'.
       01 alpnum   PIC X(11) VALUE 'amt@ 1233'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world" WITH NO ADVANCING.
            DISPLAY " This is Cobol".
            DISPLAY Quantity.
            DISPLAY signNum.
            DISPLAY decNum.
            DISPLAY packDec.
            DISPLAY alpheVal.
            DISPLAY alpnum.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
