       IDENTIFICATION DIVISION.
       PROGRAM-ID. Next_statement.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-25.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 sub1_mark PIC 99 VALUE ZEROS.
       01 sub2_mark PIC 99 VALUE ZEROS.
       01 sub3_mark PIC 99 VALUE ZEROS.
       01 sub4_mark PIC 99 VALUE ZEROS.
       01 sub5_mark PIC 99 VALUE ZEROS.
       01 total_mark PIC 999 VALUE ZEROS.
       01 std_percent PIC 999.99 VALUE ZEROS.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter Marks for 5 subjects.".
           DISPLAY "------------------------------".

           DISPLAY "Subject 1:" WITH NO ADVANCING.
           ACCEPT sub1_mark.
           IF sub1_mark < 35
               DISPLAY "Student has failed in Subject 1"
               NEXT SENTENCE
               DISPLAY "why are you gay?"
           ELSE
               ADD sub1_mark TO TOTAL_MARK
           END-IF.

           DISPLAY "Subject 2:" WITH NO ADVANCING.
           ACCEPT sub2_mark.
           IF sub2_mark < 35
               DISPLAY "Student has failed in Subject 2"
               NEXT SENTENCE
           ELSE
               ADD sub2_mark TO TOTAL_MARK
           END-IF.

           DISPLAY "Subject 3:" WITH NO ADVANCING.
           ACCEPT sub3_mark.
           IF sub3_mark < 35
               DISPLAY "Student has failed in Subject 3"
               NEXT SENTENCE
           ELSE
               ADD sub3_mark TO TOTAL_MARK
           END-IF.

           DISPLAY "Subject 4:" WITH NO ADVANCING.
           ACCEPT sub4_mark.
           IF sub4_mark < 35
               DISPLAY "Student has failed in Subject 4"
               NEXT SENTENCE
           ELSE
               ADD sub4_mark TO TOTAL_MARK
           END-IF.

           DISPLAY "Subject 5:" WITH NO ADVANCING.
           ACCEPT sub5_mark.
           IF sub5_mark < 35
               DISPLAY "Student has failed in Subject 5"
               NEXT SENTENCE
           ELSE
               ADD sub5_mark TO TOTAL_MARK
           END-IF.

           COMPUTE std_percent = (total_mark/500.0)*100.
           DISPLAY "Student percentage: " std_percent "%".



           STOP RUN.
       END PROGRAM Next_statement.
        