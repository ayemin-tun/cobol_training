       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task_sorting_file.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-02.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMP-FILE ASSIGN TO "EMPLOYEE.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.
           
           SELECT SORTWORK-FILE ASSIGN TO "SORTWORK.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT SORTED-FILE ASSIGN TO "SORTED-EMP.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.


       DATA DIVISION.
       FILE SECTION.

       FD EMP-FILE.
       01 EMP-RECORD.
           05 EMP-ID PIC 9(4).
           05 EMP-NAME PIC X(20).
           05 EMP-AGE PIC 9(2).
       
       FD SORTED-FILE.
       01 SORTED-RECORD.
           05 SR-ID PIC 9(4).
           05 SR-NAME PIC X(20).
           05 SR-AGE PIC 9(2).

       SD SORTWORK-FILE.
       01 SORT-RECORD.
           05 WRK-ID PIC 9(4).
           05 FILLER PIC X(22).

       WORKING-STORAGE SECTION.
       01 EOF PIC X VALUE 'N'.
       
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "---- Write the sample record on employee.dat".
           PERFORM RECORD-CREATE-PARA.
           
           DISPLAY " ---- Sort record ---"
           PERFORM SORT-FILE-PARA.

           DISPLAY "--- READ & DISPLAY SORTED FILE "
           PERFORM DISPLAY-PARA.

           STOP RUN.

       RECORD-CREATE-PARA.
           OPEN OUTPUT EMP-FILE.

           MOVE 1005 TO EMP-ID. 
           MOVE "John" TO EMP-NAME.
           MOVE 31 TO EMP-AGE.
           WRITE EMP-RECORD.
           
           MOVE 1001 TO EMP-ID. 
           MOVE "Miya" TO EMP-NAME.
           MOVE 29 TO EMP-AGE.
           WRITE EMP-RECORD.

           MOVE 1003 TO EMP-ID. 
           MOVE "MinMin" TO EMP-NAME.
           MOVE 44 TO EMP-AGE.
           WRITE EMP-RECORD.

           MOVE 1004 TO EMP-ID. 
           MOVE "Doe" TO EMP-NAME.
           MOVE 21 TO EMP-AGE.
           WRITE EMP-RECORD.

           MOVE 1002 TO EMP-ID. 
           MOVE "Alice" TO EMP-NAME.
           MOVE 21 TO EMP-AGE.
           WRITE EMP-RECORD.

           CLOSE EMP-FILE.
           DISPLAY "Record Created successfully.".
           DISPLAY " ".

       SORT-FILE-PARA.

           SORT SORTWORK-FILE ON ASCENDING KEY WRK-ID 
           USING EMP-FILE GIVING SORTED-FILE.
           DISPLAY "Sorting Completed.Output Saved to SORTED-EMP.DAT".
           DISPLAY " ".
       
       DISPLAY-PARA.
           OPEN INPUT  SORTED-FILE.

           PERFORM UNTIL EOF = 'Y'
               READ SORTED-FILE
                   AT END 
                       MOVE 'Y' TO EOF
                   NOT AT END
                       DISPLAY "ID: " SR-ID " | Name: " SR-NAME
                       ' | Age: ' SR-AGE
               END-READ
           END-PERFORM.
           CLOSE SORTED-FILE.
           DISPLAY " ".

       END PROGRAM Task_sorting_file.
        