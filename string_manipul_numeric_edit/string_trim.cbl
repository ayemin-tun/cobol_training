       IDENTIFICATION DIVISION.
       PROGRAM-ID. string_trim.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-19.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-ORIGINAL PIC X(20) VALUE" John Doe ".
       01 WS-TRIM-LEADING PIC X(10).
       01 WS-TRIM-TRAILING PIC X(10).
       01 WS-TRIM-BOTH PIC X(10).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE FUNCTION TRIM(WS-ORIGINAL LEADING) TO WS-TRIM-LEADING.
           MOVE FUNCTION TRIM(WS-ORIGINAL TRAILING) TO WS-TRIM-TRAILING.
      *    MOVE FUNCTION TRIM(WS-ORIGINAL BOTH)TO WS-TRIM-BOTH.
           MOVE FUNCTION TRIM(WS-ORIGINAL) TO WS-ORIGINAL.
           
           DISPLAY "Original String: '" WS-ORIGINAL "'".
           DISPLAY "Trimmed Leading: '" WS-TRIM-LEADING "'".
           DISPLAY "Trimmed Trailing: '" WS-TRIM-TRAILING "'".           
           DISPLAY "Trimmed Both: '" WS-TRIM-BOTH "'".
           STOP RUN.
       END PROGRAM string_trim.
        