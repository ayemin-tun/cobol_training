       IDENTIFICATION DIVISION.
       PROGRAM-ID. BASIC_CONTROL.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-20.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 age PIC 9(3) VALUE 25.
       01 score PIC 9(3) VALUE 85.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           IF age>18 THEN
               DISPLAY "You are an adult."
           ELSE
               DISPLAY "You are a minor."
           END-IF.

           DISPLAY FUNCTION UPPER-CASE("Hello, World!").

           IF score >=90 THEN
               DISPLAY "Grade:A"
           ELSE
               IF score >=80 THEN
                   DISPLAY "Grade:B"
               ELSE
                   IF score >=70 THEN
                       DISPLAY "Grade:C"
                   ELSE
                       DISPLAY "Grade:F"
                   END-IF
               END-IF
           END-IF.

           IF 5 > 3 AND 2 < 4
               DISPLAY "True"
           ELSE
               DISPLAY "False"   
           END-IF

           DISPLAY "Rounded Value: " FUNCTION INTEGER(3.14159 + 0.5)

           STOP RUN.
       END PROGRAM BASIC_CONTROL.
        