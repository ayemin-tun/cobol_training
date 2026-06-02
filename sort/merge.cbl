       IDENTIFICATION DIVISION.
       PROGRAM-ID. MergeFiles.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT FILE1 ASSIGN TO "file1.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT FILE2 ASSIGN TO "file2.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT MERGED-FILE ASSIGN TO "merged.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT SORT-WORKFILE ASSIGN TO "sortwork.dat".

       DATA DIVISION.
       FILE SECTION.

       FD FILE1.
       01 FILE1-RECORD.
           05 FILE1-ID   PIC 9(4).
           05 FILE1-NAME PIC X(20).

       FD FILE2.
       01 FILE2-RECORD.
           05 FILE2-ID   PIC 9(4).
           05 FILE2-NAME PIC X(20).

       FD MERGED-FILE.
       01 MERGED-RECORD.
           05 MERGED-ID   PIC 9(4).
           05 MERGED-NAME PIC X(20).

       SD SORT-WORKFILE.
       01 SORT-RECORD.
           05 SORT-ID PIC 9(4).
           05 FILLER  PIC X(20). *> Holds the name from FILE1 or FILE2

       PROCEDURE DIVISION.
       BEGIN.
           MERGE SORT-WORKFILE
               ON ASCENDING KEY SORT-ID
               USING FILE1 FILE2
               GIVING MERGED-FILE.

           STOP RUN.
           