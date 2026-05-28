       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task1_array.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 StudentNames.
           05 StudentName PIC A(20) OCCURS 5 TIMES.
       01 sub_index PIC 9 VALUE 1. 
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "John" TO StudentName(1).
           MOVE "Jane" TO StudentName(2).
           MOVE "Alice" TO StudentName(3).
           MOVE "Bob" TO StudentName(4).
           MOVE "Charile" TO StudentName(5).
           
           DISPLAY "Student Information"
           DISPLAY "--------------------"
           PERFORM VARYING sub_index FROM 1 BY 1 UNTIL sub_index>5
               DISPLAY "Name: " StudentName(sub_index)
           END-PERFORM.
           
           MOVE "Eve" To StudentName(3).
           DISPLAY "Update information".
           DISPLAY "--------------------"
           PERFORM VARYING sub_index FROM 1 BY 1 UNTIL sub_index>5
               DISPLAY "Name: " StudentName(sub_index)
           END-PERFORM.

           STOP RUN.
       END PROGRAM Task1_array.
        