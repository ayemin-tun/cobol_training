       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-01.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT DATA-FILE ASSIGN TO 'Missing.dat'
           ORGANIZATION IS LINE SEQUENTIAL
           FILE STATUS IS WS-FILE-STATUS.

      *    SELECT DATA-FILE ASSIGN TO 'DATAFILE.DAT.'
      *    ORGANIZATION IS LINE SEQUENTIAL
      *    FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD DATA-FILE.
       01 DATA-RECORD.
           05 DataID PIC 9(4).
           05 DataName PIC X(10).

       WORKING-STORAGE SECTION.
       01 WS-FILE-STATUS PIC XX.
       01 EOF PIC X VALUE 'N'.
       
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
      *    ---------- Write Section -----------------
      *    Comment this section to test file not found error 
      *    PERFORM FILE_WRITE_INITIALIZE. 

      *    ---------- Read Section ------------------
           OPEN INPUT  DATA-FILE.
           IF WS-FILE-STATUS = '00' THEN
               DISPLAY "Success: DATAFILE.DAT opened successfully"
               PERFORM READ_DATA
               CLOSE DATA-FILE
           ELSE 
               DISPLAY "Can not open the file"
               DISPLAY "File Status Code: " WS-FILE-STATUS
               IF WS-FILE-STATUS = '35' THEN
                   DISPLAY "The specific file does not exist."
               END-IF
           END-IF.

           STOP RUN.
       
       FILE_WRITE_INITIALIZE.
           OPEN OUTPUT DATA-FILE.
           MOVE 1000 TO DataID.
           MOVE "String" TO DataName.
           WRITE DATA-RECORD.

           MOVE 1001 TO DataID.
           MOVE "Integer" TO DataName.
           WRITE DATA-RECORD.

           MOVE 1002 TO DataID.
           MOVE "Float" TO DataName.
           WRITE DATA-RECORD.
           Close DATA-FILE.

       READ_DATA.
           PERFORM UNTIL EOF = 'Y'
               READ DATA-FILE INTO DATA-RECORD
               AT END MOVE 'Y' TO EOF
               NOT AT END DISPLAY "Record: " DataId SPACE DataName
           END-PERFORM.

       END PROGRAM Task3.
        