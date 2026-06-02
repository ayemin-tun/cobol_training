       IDENTIFICATION DIVISION.
       PROGRAM-ID. Table_test.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-26.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      **01 Name_GP.
      *    05 EName PIC X(10) OCCURS 3 TIMES VALUE SPACES.
      *01 SUB PIC 9.

       01 Scores.
           05 Ws-Class-Group OCCURS 3 TIMES.
               10 Ws-Class   PIC 99 OCCURS 4 TIMES VALUE ZERO.
       01 J PIC 9.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    MOVE "Alice" TO EName(1).
      *    MOVE "John" To EName(2).
      *    MOVE "WILL" TO EName(3).
      *
      *    DISPLAY "The Name are".
      *    PERFORM VARYING SUB FROM 1 BY 1 UNTIL SUB>3
      *        DISPLAY EName(SUB)
      *    END-PERFORM.
           
           MOVE 85 TO Ws-Class (1, 1)
           MOVE 90 TO Ws-Class (1, 2)
           MOVE 75 TO Ws-Class(2, 1)
           DISPLAY "Scores in Class 1:"
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > 4
               DISPLAY "Student" j": " Ws-Class(1, J)
           END-PERFORM

           STOP RUN.
       END PROGRAM Table_test.
        