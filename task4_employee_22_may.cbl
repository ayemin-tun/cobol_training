       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task4_Employee_Data_Processing.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-23.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Employee_Detail.
           05 employee_id PIC 9(4).
           05 employee_name PIC A(20).
           05 employee_age PIC 9(3).
           05 rf_emp_age REDEFINES employee_age PIC X(3).
           05 employee_status PIC A(5).
       
       66 Basic_Detail RENAMES employee_id THROUGH employee_name.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "===== Task4: Employee Data Processing =====".
           DISPLAY "Employee id: " WITH NO ADVANCING.
           ACCEPT employee_id.
           DISPLAY "Employee Name: " WITH NO ADVANCING.
           Accept employee_name.
           DISPLAY "age: " WITH NO ADVANCING.
           Accept employee_age.

           IF employee_age <= 18 THEN 
               Move "Minor" TO employee_status
           ELSE
               MOVE "Adult" TO employee_status
           END-IF.
           
           DISPLAY " -------------------------- "
           DISPLAY "Employee id: " employee_id.
           DISPLAY "Employee Name: " employee_name.
           DISPLAY "Employee age: " employee_age.
           DISPLAY "age (in alphanueric): " rf_emp_age.
           DISPLAY "Employee status: " employee_status.
           DISPLAY "---------------------------------"
           DISPLAY "Basic Detail: " Basic_detail.
      
           STOP RUN.
       END PROGRAM Task4_Employee_Data_Processing.
        