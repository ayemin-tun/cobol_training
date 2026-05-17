       IDENTIFICATION DIVISION.
       PROGRAM-ID. add_operation.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-15.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 total PIC 9(5) VALUE 10.
       01 result PIC 9(5) VALUE 30.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ADD 10 TO total GIVING result.
           ADD 15 To total.

           DISPLAY "Total: " total.
           DISPLAY "Result: " result.

           SUBTRACT 5 FROM total GIVING result.
           SUBTRACT 5 FROM total.

           DISPLAY "After Subtracting :Total: " total.
           DISPLAY "After Subtracting :Result: " result.

           MULTIPLY 2 BY total GIVING result.
           MULTIPLY 2 BY total.
       
           DISPLAY "After Multiplying :Total: " total.
           DISPLAY "After Multiplying :Result: " result.
           DISPLAY " ............ ".
           
           DISPLAY "Before Dividing :Total: " total.
           DIVIDE total BY 3 GIVING result.
           DIVIDE total By 2 GIVING total.

           DISPLAY "After Dividing :Total: " total.
           DISPLAY "After Dividing :Result: " result.


           STOP RUN.
       END PROGRAM add_operation.
        