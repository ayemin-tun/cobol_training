       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task2_rename.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-23.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeDetail.
           05 employee_id PIC 9(5).
           05 employee_name PIC A(20).
           05 employee_age PIC 9(3).
           05 employee_position PIC A(30).
           05 salary PIC 9(8).
       
       66 BasicDetail RENAMES employee_id THROUGH employee_age.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "===== Task2: Rename =====".
           MOVE "23124AyeMinTun26" TO BasicDetail.
           DISPLAY "Basic Detail: " BasicDetail.
           STOP RUN.
       END PROGRAM Task2_rename.
        