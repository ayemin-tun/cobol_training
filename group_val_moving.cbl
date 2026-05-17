       IDENTIFICATION DIVISION.
       PROGRAM-ID. gropVariable_moving.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-14.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       01 SourceGroup.
           05 numField PIC 9(5) VALUE 12345.
           05 alphField PIC A(5) VALUE "COcBOL".
           05 alphNumField PIC X(10) VALUE "COBOL134".
       
       01 DestinationGroup.
           05 desNum1 PIC 9(5).
           05 desAlph1 PIC A(5).
           05 desAlphNum PIC X(10).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE SourceGroup TO DestinationGroup.
           DISPLAY "Num Destination: " desNum1.
           DISPLAY "Alphabetic Destination: " desAlph1.
           DISPLAY "Alphanumeric Destination: " desAlphNum.
           STOP RUN.
       END PROGRAM gropVariable_moving.
        