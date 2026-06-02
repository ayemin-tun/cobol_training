       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task1_file.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-01.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMP-FILE ASSIGN TO 'emp.dat' 
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD EMP-FILE.
       01 EmployeeRecord.
           05 EmployeeId PIC 9(4).
           05 EmployeeName PIC X(20).

       WORKING-STORAGE SECTION.
       01 EOF PIC X VALUE 'N'.
       
       
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

           OPEN INPUT EMP-FILE.
           PERFORM UNTIL EOF = 'Y'
               Read EMP-FILE INTO EmployeeRecord
               AT END MOVE "Y" TO EOF
               NOT AT END DISPLAY EmployeeId SPACE EMPLOYEENAME
           END-PERFORM.
           CLOSE EMP-FILE.
           DISPLAY "file processing complete."
           
           

           STOP RUN.
       END PROGRAM Task1_file.
        