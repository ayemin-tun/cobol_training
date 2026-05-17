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
       01 AmountWithZ PIC ZZZZZ9 VALUE 000045.
       01 AmountWithS PIC *****9 VALUE 000045.
       01 AmountWithComma PIC ZZ,ZZZ,ZZ9 VALUE 1234567.
       01 AmountWithDolla PIC $ZZ,ZZ9.99 VALUE 1234.56.
       01 CreditOrDebit PIC ZZ,ZZ9.99CR VALUE -6789.01.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "With Z" AmountWithZ.
            DISPLAY "With S" AmountWithS.
            DISPLAY "With Comma" AmountWithComma.
            DISPLAY "With Dolla" AmountWithDolla.
            DISPLAY "With CR" CreditOrDebit.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
