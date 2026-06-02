       IDENTIFICATION DIVISION.
       PROGRAM-ID. remainder_test.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-15.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 source_value PIC 9(3) VALUE 17.
       01 divisor PIC 9(3) VALUE 5.
       01 quotient PIC Z(3).
       01 remainder_val PIC Z(3).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DIVIDE source_value BY divisor GIVING quotient REMAINDER 
           remainder_val.

           DISPLAY "Source Value: " source_value.
           DISPLAY "Quotient: " quotient.
           DISPLAY "Remainder: " remainder_val.
           STOP RUN.
       END PROGRAM remainder_test.
        