       IDENTIFICATION DIVISION.
       PROGRAM-ID. Salary_Check.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-14.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 H_WS-MESSAGE        PIC X(25) VALUE "High Salary Detected!".
       77 L_WS-MESSAGE        PIC X(25) VALUE "Low Salary Detected!".

        01 Employee_Detail.
         05 emp_name PIC A(20).
         05 age  PIC 9(2).
         05 salary PIC 9(7).
       
       88 salary_threshold VALUE 50000 THRU 9999999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter Employee Name: ".
           ACCEPT emp_name.
           DISPLAY "Enter Employee Age: ".
           ACCEPT age.
           DISPLAY "Enter Employee Salary: ".
           ACCEPT salary.

           DISPLAY "Employee Name: " emp_name.
           DISPLAY "Employee Age: " age.
           DISPLAY "Employee Salary: " salary.

           IF salary_threshold
              DISPLAY H_WS-MESSAGE
           ELSE
               DISPLAY L_WS-MESSAGE
           END-IF.

           STOP RUN.
       END PROGRAM Salary_Check.
        