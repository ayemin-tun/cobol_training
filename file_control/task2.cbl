       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task2_file_key.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-01.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMP-FILE ASSIGN TO 'empdump.dat'
           ORGANIZATION IS INDEXED
           ACCESS MODE IS RANDOM
           RECORD KEY IS EmployeeId
           FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD EMP-FILE.
       01 EmployeeRecord.
           05 EmployeeId PIC 9(4).
           05 EmployeeName PIC X(20).
       
       WORKING-STORAGE SECTION.
       01 WS-FILE-STATUS PIC XX.
       01 SEARCH-KEY PIC 9(4).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN OUTPUT EMP-FILE.
           
           MOVE 1000 TO EmployeeId.
           MOVE "Holy Water" To EmployeeName.
           WRITE EmployeeRecord.
           
           MOVE 1001 TO EmployeeId.
           MOVE "Holy Cow" To EmployeeName.
           WRITE EmployeeRecord.
           
           MOVE 1003 TO EmployeeId.
           MOVE "Holy Duck" To EmployeeName.
           WRITE EmployeeRecord.
           
           MOVE 1002 TO EmployeeId.
           MOVE "Holy Chicken" To EmployeeName.
           WRITE EmployeeRecord.

           CLOSE EMP-FILE.
           
           OPEN I-O EMP-FILE.
           MOVE 1002 TO SEARCH-KEY.
           MOVE SEARCH-KEY TO EmployeeId.

           READ EMP-FILE
               INVALID KEY
                   DISPLAY "Employee Not Found"
               NOT INVALID KEY 
                   DISPLAY "Employee Found"
                   DISPLAY "ID: " EmployeeId
                   DISPLAY "Name: " EmployeeName
           END-READ
           CLOSE EMP-FILE.
           STOP RUN.
       END PROGRAM Task2_file_key.
        