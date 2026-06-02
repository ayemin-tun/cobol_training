       IDENTIFICATION DIVISION.
       PROGRAM-ID. FileStatus.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-01.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT EmployeeFile ASSIGN TO "employee.dat" 
           ORGANIZATION IS LINE SEQUENTIAL 
           FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD EmployeeFile.
       01 EmployeeRecord.
           05 EmployeeId PIC 9(5).
           05 EmployeeName PIC X(20).

       WORKING-STORAGE SECTION.
       01 WS-FILE-STATUS PIC XX.
       01 EOF PIC X VALUE "N".
       
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN INPUT EmployeeFile.
           IF WS-FILE-STATUS NOT = '00'
               DISPLAY "Error Opening file: statu " WS-FILE-STATUS
               STOP RUN
           END-IF.

           PERFORM UNTIL EOF = 'Y'
               READ EmployeeFile INTO EmployeeRecord
                   AT END MOVE "Y" TO EOF
                   NOT AT END DISPLAY EmployeeId SPACE EmployeeName
           END-PERFORM.

           CLOSE EmployeeFile.
           DISPLAY "File processing completed".

           STOP RUN.
       END PROGRAM FileStatus.
        