       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task1_evaluate_statement.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-21.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 student_score PIC 9(2).
       01 grade PIC A(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "------ Task 1:Evaluate statement ----".
           DISPLAY "Enter Student Score: " With NO ADVANCING.
           ACCEPT student_score.

           EVALUATE student_score
               WHEN 100 THRU 90
                   MOVE "A" TO grade
               WHEN 89 THRU 80
                   MOVE "B" TO grade
               WHEN 79 THRU 70
                   MOVE "C" TO grade
               WHEN OTHER
                   MOVE "F" TO grade
           END-EVALUATE.
           DISPLAY "Student Grade: " grade.
           STOP RUN.
       END PROGRAM Task1_evaluate_statement.
        