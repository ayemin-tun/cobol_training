       IDENTIFICATION DIVISION.
       PROGRAM-ID. evaluate_test.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-20.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ws_score PIC 9(3) VALUE 85.
       01 age PIC 9(3) VALUE 25.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Your Score is :" ws_score.

           EVALUATE TRUE
               WHEN ws_score >= 90
                   DISPLAY "Grade: A"
               WHEN ws_score >= 80
                   DISPLAY "Grade: B"
               WHEN ws_score >= 70
                   DISPLAY "Grade: C"
               WHEN OTHER
                   DISPLAY "Grade: F"
           END-EVALUATE.

           EVALUATE age
               WHEN 18 THRU 25
                   DISPLAY "You are an adult."
               WHEN 26 THRU 65
                     DISPLAY "You are a senior."
                WHEN OTHER
                     DISPLAY "You are a minor."
           END-EVALUATE.
           
           STOP RUN.
       END PROGRAM evaluate_test.
        