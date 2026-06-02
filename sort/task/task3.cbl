       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3-report-generate.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-02.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT REPORT-FILE ASSIGN TO "REPORT.txt"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD REPORT-FILE.
       01 REPORT-RECORD PIC X(50).
       
       WORKING-STORAGE SECTION.
       01 RP-HEADER-LINE.
           05 FILLER PIC X(8) VALUE "EMP-ID".
           05 FILLER PIC X(20) VALUE "EMP-NAME".
           05 FILLER PIC X(15) VALUE "DEPARTMENT".

       01 DASH-LINE PIC X(50) VALUE
       "----------------------------------------------".

       01 RP-DETAIL-LINE.
           05 DET-ID PIC 9(5).
           05 FILLER PIC X(3) VALUE "   ".
           05 DET-NAME PIC X(20).
           05 DET-DEP PIC X(15).
       
       01 WS-EMP-ID PIC 9(5).
       01 WS-EMP-NAME PIC X(20) VALUE "Employee".
       01 WS-DEP PIC X(15) VALUE "FINANCE".
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           OPEN OUTPUT REPORT-FILE.

           WRITE REPORT-RECORD FROM RP-HEADER-LINE.
           WRITE REPORT-RECORD FROM DASH-LINE.

           DISPLAY "REPORT CREATING ....................... ".
           PERFORM REPORT-CREATE-PARA.

           STOP RUN.
       
       REPORT-CREATE-PARA.
           PERFORM VARYING WS-EMP-ID FROM 1001 BY 1 
           UNTIL WS-EMP-ID > 1005
               MOVE WS-EMP-ID TO DET-ID
               MOVE WS-EMP-NAME TO DET-NAME
               MOVE WS-DEP TO DET-DEP

               WRITE REPORT-RECORD FROM RP-DETAIL-LINE
           END-PERFORM.
           CLOSE REPORT-FILE.
           DISPLAY "  ".
           DISPLAY "Success: REPORT.txt file generate successfully".

       END PROGRAM Task3-report-generate.
        