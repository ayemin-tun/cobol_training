       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXE_STU_GRADE.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-21.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS_STUDENT_COUNT PIC 9(1) VALUE 1.

       01 WS_SCORE PIC 9(3).
       01 WS_GRADE PIC X(1).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "====== STUDENT GRADE =======".
           PERFORM UNTIL WS_STUDENT_COUNT >5
               DISPLAY "Student # " WS_STUDENT_COUNT 
               " Enter Score(1-100): " WITH NO ADVANCING
               ACCEPT WS_SCORE

               EVALUATE TRUE 
                   WHEN WS_SCORE>=90 AND WS_SCORE<=100
                       MOVE "A" TO WS_GRADE
                   WHEN WS_SCORE >= 80 AND WS_SCORE < 90
                       MOVE "B" TO WS_GRADE
                   WHEN WS_SCORE >= 70 AND WS_SCORE < 80
                       MOVE "C" TO WS_GRADE
                   WHEN WS_SCORE >= 60 AND WS_SCORE < 70
                       MOVE "D" TO WS_GRADE
                   WHEN OTHER
                       MOVE "F" TO WS_GRADE
               END-EVALUATE

               DISPLAY "Result for Student#" WS_STUDENT_COUNT 
               DISPLAY "Grade: " WS_GRADE
               ADD 1 TO WS_STUDENT_COUNT
           END-PERFORM.
           
               DISPLAY ' ------------------------ '
           STOP RUN.
       END PROGRAM EXE_STU_GRADE.
        