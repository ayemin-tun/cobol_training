       IDENTIFICATION DIVISION.
       PROGRAM-ID. Start_sta.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-03.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLOYEE-FILE ASSIGN TO "employeedata.dat"
           ORGANIZATION IS INDEXED
           ACCESS MODE IS DYNAMIC
           RECORD KEY IS EMP-ID.

       DATA DIVISION.
       FILE SECTION.
       FD EMPLOYEE-FILE.
       01 EMP-RECORD.
           05 EMP-ID PIC 9(4).
           05 EMP-NAME PIC X(20).
           05 DEP PIC X(15).

       WORKING-STORAGE SECTION.
       01 SEARCH-ID PIC 9(4).
       01 EOF PIC X VALUE "N".
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM GENERATE-PARA.

           OPEN INPUT EMPLOYEE-FILE.
           DISPLAY "ENTER employee id for reading: " WITH NO ADVANCING.
           ACCEPT SEARCH-ID.
           MOVE SEARCH-ID TO EMP-ID.
           START EMPLOYEE-FILE KEY >= EMP-ID
               INVALID KEY 
                   DISPLAY "Record not found"
                   MOVE 'Y' TO EOF
           END-START.

           PERFORM UNTIL EOF = 'Y'
               READ EMPLOYEE-FILE 
                   AT END MOVE "Y" TO EOF
                   NOT AT END 
                       DISPLAY EMP-ID SPACE EMP-NAME SPACE DEP
           END-PERFORM.
           
           CLOSE EMPLOYEE-FILE.
           
           STOP RUN.
       
       GENERATE-PARA.
           OPEN OUTPUT  EMPLOYEE-FILE.

           MOVE 1001 TO EMP-ID. MOVE "John" TO EMP-NAME.
           MOVE "IT" TO DEP.
           WRITE EMP-RECORD.

           MOVE 1002 TO EMP-ID. MOVE "May" TO EMP-NAME.
           MOVE "Finance" TO DEP.
           WRITE EMP-RECORD.

           MOVE 1003 TO EMP-ID. MOVE "Alice" TO EMP-NAME.
           MOVE "IT" TO DEP.
           WRITE EMP-RECORD.

           MOVE 1004 TO EMP-ID. MOVE "Harry" TO EMP-NAME.
           MOVE "Marketing" TO DEP.
           WRITE EMP-RECORD.

           MOVE 1005 TO EMP-ID. MOVE "Clint" TO EMP-NAME.
           MOVE "IT" TO DEP.
           WRITE EMP-RECORD.

           CLOSE EMPLOYEE-FILE.
           DISPLAY " Generate and successfully add data to file .....".

       END PROGRAM Start_sta.
        