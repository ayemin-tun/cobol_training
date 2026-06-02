       IDENTIFICATION DIVISION.
       PROGRAM-ID. Report_export.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-02.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EXPORT-FILE ASSIGN TO "report.csv"
           ORGANIZATION IS SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD EXPORT-FILE.
       01 Export_Record PIC X(30).

       WORKING-STORAGE SECTION.
       01 EmployeeId PIC 9(5).
       01 EmployeeName PIC X(20) VALUE "Employee".
       01 Department PIC X(15) VALUE "Finance".
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN OUTPUT EXPORT-FILE.
           PERFORM EXPREC.
           CLOSE EXPORT-FILE.
           STOP RUN.
       
       EXPREC.
           PERFORM VARYING EmployeeId FROM 10001 BY 1 
           UNTIL EmployeeId > 10005
               STRING EmployeeId DELIMITED BY SPACE
                   EmployeeName DELIMITED BY SPACE
                   Department DELIMITED BY SPACE
               INTO Export_Record
               WRITE Export_Record
           END-PERFORM.
       END PROGRAM Report_export.
        