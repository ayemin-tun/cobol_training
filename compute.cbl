       IDENTIFICATION DIVISION.
       PROGRAM-ID. compute_test.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-15.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(3) VALUE 76.
       01 B PIC 9(3) VALUE 7.
       01 C PIC 9(4).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           COMPUTE C = A + B.
           DISPLAY "A + B = " C.

           COMPUTE C  = A/B.
           DISPLAY "A / B = " C.
           STOP RUN.
       END PROGRAM compute_test.
        