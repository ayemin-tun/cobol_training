       IDENTIFICATION DIVISION.
       PROGRAM-ID. Alternative_sta.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-03.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CUS-FILE ASSIGN TO 'customer.dat'
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC 
           RECORD KEY IS CUS-ID
           ALTERNATE RECORD KEY IS DEPT WITH DUPLICATES.

       DATA DIVISION.
       FILE SECTION.
       FD CUS-FILE.
       01 CUS-RECORD.
           05 CUS-ID PIC 9(4).
           05 CUS-NAME PIC X(20).
           05 DEPT PIC X(15).
       
       WORKING-STORAGE SECTION.
       01 SEARCH-DEPT PIC X(15).
       01 EOF PIC X VALUE 'N'.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM GENERATE-PARA.

           PERFORM ALTERNATE-READ-PARA.
           STOP RUN.
       
       GENERATE-PARA.
           OPEN OUTPUT CUS-FILE.

           MOVE 1000 TO CUS-ID.MOVE "AMT" TO CUS-NAME.
           MOVE 'IT' TO DEPT.
           WRITE CUS-RECORD.

           MOVE 1001 TO CUS-ID.MOVE "John" TO CUS-NAME.
           MOVE 'HR' TO DEPT.
           WRITE CUS-RECORD.

           MOVE 1002 TO CUS-ID.MOVE "Khin" TO CUS-NAME.
           MOVE 'IT' TO DEPT.
           WRITE CUS-RECORD.

           MOVE 1003 TO CUS-ID.MOVE "Alice" TO CUS-NAME.
           MOVE 'ACCOUNTING' TO DEPT.
           WRITE CUS-RECORD.

           CLOSE CUS-FILE.

       ALTERNATE-READ-PARA.
           OPEN INPUT CUS-FILE.
           DISPLAY "Enter Department To search: " WITH NO ADVANCING.
           ACCEPT SEARCH-DEPT.
           MOVE FUNCTION UPPER-CASE(SEARCH-DEPT) TO SEARCH-DEPT.
           MOVE SEARCH-DEPT TO DEPT.

           START CUS-FILE KEY IS EQUAL TO DEPT
               INVALID KEY 
                   DISPLAY "NO RECORD Found for department."
                   CLOSE CUS-FILE
                   STOP RUN
           END-START

           PERFORM UNTIL EOF = 'Y'
               READ CUS-FILE NEXT RECORD
                   AT END MOVE 'Y' TO EOF
                   NOT AT END 
                       IF DEPT = SEARCH-DEPT
                           DISPLAY CUS-ID SPACE CUS-NAME SPACE DEPT
                       ELSE 
                           MOVE 'Y' TO EOF
                       END-IF
           END-PERFORM

           CLOSE CUS-FILE.
           
       END PROGRAM Alternative_sta.
        