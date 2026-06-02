       IDENTIFICATION DIVISION.
       PROGRAM-ID. continue_statment.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-25.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 STU_MARKS.
           05 stu_name PIC A(20).
           05 sub_1 PIC 99.
           05 sub_2 PIC 99.
           05 sub_3 PIC 99.
           05 sub_4 PIC 99.
           05 sub_5 PIC 99.
       
       01 total_marks PIC 999.
       01 average_marks PIC 99V9.
       01 sub_count PIC 9(1) VALUE 5.
       01 i PIC 9 VALUE 1.
       01 sub_mark PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter student Name: ".
           Accept stu_name.

           PERFORM VARYING i FROM 1 BY 1 UNTIL I > sub_count
               EVALUATE i
                   WHEN 1
                       DISPLAY "Enter sub1 marks: "
                       Accept sub_1
                       MOVE sub_1 TO sub_mark
                   WHEN 2
                       DISPLAY "Enter sub2 marks: "
                       Accept sub_2
                       MOVE sub_2 TO sub_mark
                   WHEN 3
                       DISPLAY "Enter sub3 marks: "
                       Accept sub_3
                       MOVE sub_3 TO sub_mark
                   WHEN 4
                       DISPLAY "Enter sub4 marks: "
                       Accept sub_4
                       MOVE sub_4 TO sub_mark
                   WHEN 5
                       DISPLAY "Enter sub5 marks: "
                       Accept sub_5
                       MOVE sub_5 TO sub_mark
               END-EVALUATE

               IF sub_mark < 35 THEN 
                   DISPLAY "Student has fallen on subject " i
                   CONTINUE
               ELSE 
                   ADD SUB_MARK TO TOTAL_MARKS
               END-IF

           END-PERFORM

           COMPUTE AVERAGE_MARKS = total_marks/sub_count.
           DISPLAY "Total Marks: " TOTAL_MARKS.
           DISPLAY "Average Marks: " AVERAGE_MARKS.

           IF AVERAGE_MARKS >= 35 THEN 
               DISPLAY "Result: PASS"
           ELSE
               DISPLAY "Result: Fail"
           END-IF
               

           STOP RUN.
       END PROGRAM continue_statment.
        