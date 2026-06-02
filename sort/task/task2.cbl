       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task2-merging-file.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-06-02.
       
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILE1 ASSIGN TO "FILE1.DAT" 
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT FILE2 ASSIGN TO "FILE2.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT MERGE-FILE ASSIGN TO "MERGED.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

           SELECT SORTWRK-FIILE ASSIGN TO "SORTWRKFILE.DAT"
           ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD FILE1.
       01 FILE1-RECORD.
           05 F1-ID PIC 9(4).
           05 F1-Name PIC X(20).
       
       FD FILE2.
       01 FILE2-RECORD.
           05 F2-ID PIC 9(4).
           05 F2-Name PIC X(20).
       
       FD MERGE-FILE.
       01 MERGE-RECORD.
           05 MERGE-ID PIC 9(4).
           05 MERGE-NAME PIC A(20).
       
       SD SORTWRK-FIILE.
       01 SORT-RECORD.
           05 WRK-ID PIC 9(4).
           05 FILLER PIC X(20).

       WORKING-STORAGE SECTION.
       01 EOF PIC X VALUE 'N'.
       
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "--- Create two file with sorted Rec ---".
           PERFORM CREATE-SORT-PARA.
           
           DISPLAY " --- MERGING FILE ---".
           PERFORM MERGE-FILE-PARA.

           DISPLAY " --- DISPLAY RECORD ---".
           PERFORM DISPLAY-PARA.
           STOP RUN.
       
       CREATE-SORT-PARA.
           OPEN OUTPUT FILE1.
           MOVE 1001 TO F1-ID. MOVE "John" TO F1-NAME. 
           WRITE FILE1-RECORD.
           MOVE 1003 TO F1-ID. MOVE "ALice" TO F1-NAME.
           WRITE FILE1-RECORD.
           CLOSE FILE1.

           OPEN OUTPUT FILE2.
           MOVE 1002 TO F2-ID. MOVE "Meow" TO F2-NAME. 
           WRITE FILE2-RECORD.
           MOVE 1004 TO F2-ID. MOVE "Lol" TO F2-NAME.
           WRITE FILE2-RECORD.
           CLOSE FILE2.

           DISPLAY "File create successfully on file1 and file2".
           DISPLAY " ".
       
       MERGE-FILE-PARA.
           MERGE SORTWRK-FIILE ON ASCENDING KEY WRK-ID
           USING FILE1 FILE2 GIVING MERGE-FILE.

           DISPLAY "Merging Complete..."
           DISPLAY " ".
       
       DISPLAY-PARA.
           OPEN INPUT MERGE-FILE.
           PERFORM UNTIL EOF='Y'
               READ MERGE-FILE
                   AT END MOVE 'Y' TO EOF
               NOT AT END
                   DISPLAY "ID: " MERGE-ID " | Name: " MERGE-NAME
               END-READ
           END-PERFORM.
           CLOSE MERGE-FILE.
           DISPLAY " ".
      
       END PROGRAM Task2-merging-file.
        