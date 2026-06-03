       IDENTIFICATION DIVISION.
       PROGRAM-ID. SEQUENTIAL_FILE.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-03.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMP-FILE ASSIGN TO "empsequential.dat"
           ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD EMP-FILE.
       01 EMP-RECORD.
           05 EMP-ID PIC 9(4).
           05 EMP-NAME PIC X(20).

       WORKING-STORAGE SECTION.
       01 EOF-WRITE PIC X VALUE 'N'.
       01 EOF-READ PIC X VALUE 'N'.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    Sequential file write
           PERFORM SEQ-FILE-WRITE-PARA.
           
           DISPLAY " "

      *    Sequentail File read
           PERFORM SEQ-FILE-READ-PARA.
           STOP RUN.

       SEQ-FILE-WRITE-PARA.
           OPEN OUTPUT EMP-FILE.
           DISPLAY "Sequential FIle Writing ".
           DISPLAY "-----------------".

           PERFORM UNTIL EOF-WRITE = 'Y'
               DISPLAY "ENTER Employee ID: " WITH NO ADVANCING 
               ACCEPT EMP-ID
               DISPLAY "ENTER Employee NAME: " WITH NO ADVANCING 
               ACCEPT EMP-NAME
               WRITE EMP-RECORD
               DISPLAY "END? (Y/N)" WITH NO ADVANCING
               ACCEPT EOF-WRITE
           END-PERFORM.

           CLOSE EMP-FILE.
       
       SEQ-FILE-READ-PARA.
           DISPLAY "Sequential FIle Reading ".
           DISPLAY " ----------------- ".

           OPEN INPUT EMP-FILE.
           PERFORM UNTIL EOF-READ = 'Y'
               READ EMP-FILE INTO EMP-RECORD
               AT END MOVE 'Y' TO EOF-READ 
               NOT AT END DISPLAY EMP-ID SPACE EMP-NAME
           END-PERFORM
           CLOSE EMP-FILE.

       END PROGRAM SEQUENTIAL_FILE.
        