       IDENTIFICATION DIVISION.
       PROGRAM-ID. rename_program.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-22.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Employee_Group.
           05 employee_id PIC 9(3).
           05 employee_name PIC A(30).
           05 employee_age PIC 9(2).
           
       66 basic_detail RENAMES employee_id THROUGH employee_name. 
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "123JohnDoe" TO basic_detail. 
           DISPLAY "Basic Detail: " basic_detail
           STOP RUN.
       END PROGRAM rename_program.
        