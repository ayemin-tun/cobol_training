       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-14.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeDetail1.
           05 emp_name1 PIC A(20).
           05 age1 PIC 9(2).
           05 salary1 PIC 9(7).
       
       01 EmployeeDetail2.
           05 emp_name2 PIC A(20).
           05 age2 PIC 9(2).
           05 salary2 PIC 9(7).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter Employee Name: ".
           ACCEPT emp_name1.
           DISPLAY "Enter Employee Age: ".
           ACCEPT age1.
           DISPLAY "Enter Employee Salary: ".
           ACCEPT salary1.

           DISPLAY "Employee1 Name: " emp_name1.
           DISPLAY "Employee1 Age: " age1.
           DISPLAY "Employee1 Salary: " salary1.
           DISPLAY " ".
           DISPLAY "After Move Operation".
           MOVE EmployeeDetail1 TO EmployeeDetail2.
           DISPLAY "Employee2 Name: " emp_name2.
           DISPLAY "Employee2 Age: " age2.
           DISPLAY "Employee2 Salary: " salary2.

           STOP RUN.
       END PROGRAM Task3.
        