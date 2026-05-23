       IDENTIFICATION DIVISION.
       PROGRAM-ID. Initialize_statement.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-22.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num_field PIC 9(5) VALUE 12345.
       01 alpha_field PIC A(10) VALUE "Hello".

       01 Group_Data.
           05 data1 PIC 9(3) VALUE 235.
           05 data2 PIC A(5) VALUE "hello".
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Before Initialized: " num_field "," alpha_field.
           INITIALIZE num_field alpha_field.
           DISPLAY "After Initialized: " num_field "," alpha_field. 
           
           DISPLAY "Group Initializing"
           DISPLAY "Before: " Group_data.
           INITIALIZE Group_data REPLACING NUMERIC BY "###".
           DISPLAY "After: " Group_data.
           STOP RUN.
       END PROGRAM Initialize_statement.
        