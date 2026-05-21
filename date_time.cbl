       IDENTIFICATION DIVISION.
       PROGRAM-ID. Date_Time.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-19.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ws_date            PIC X(21).
       
       01 ws_ymd_date        PIC 9(8) VALUE 20240619.
       
       01 ws_integer_days    PIC 9(8).
       
       01 ws_formatted_date  PIC X(8).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE FUNCTION CURRENT-DATE TO ws_date.
           DISPLAY "Current Date and Time: " ws_date.
           DISPLAY " ".
           
           
           MOVE FUNCTION INTEGER-OF-DATE(ws_ymd_date) TO ws_integer_days.
           DISPLAY "COBOL Integer Days   : " ws_integer_days.
       
           MOVE FUNCTION DATE-OF-INTEGER(ws_integer_days) 
               TO ws_formatted_date.
               
           DISPLAY "Formatted Date (YMD) : " ws_formatted_date.
           STOP RUN.
       END PROGRAM Date_Time.
       