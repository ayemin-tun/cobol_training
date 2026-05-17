      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Employee_Record.
        05 employee_id PIC 9(5) VALUE 13429.

        05 employee_name.
           10 first_name Pic A(3) VALUE "AMT".
           10 last_name PIC A(3) VALUE "TTT".

        05 Employee_Detail.
           10 employee_occu PIC A(20) VALUE "Software engineer".
           10 department PIC A(2) VALUE "IT".
           10 employee_salary PIC 9(7) VALUE 1500000.

       01  WithoutZ PIC 9(7) VALUE 123.
       01  WithZ PIC ZZZ9 VALUE 5.
       01 Amount_with_Star PIC *****9 VALUE 000002.
       01 Amount_with_comma PIC ZZ,ZZZ,ZZ9 VALUE 94120234.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Employee Record".
            DISPLAY "Id: " employee_id.
            DISPLAY "Name: " first_name last_name.
            DISPLAY "Occupation: " employee_occu.
            DISPLAY "Department: " department.
            DISPLAY "Salary: " employee_salary.
            DISPLAY ".................".
            DISPLAY Employee_Record.
            DISPLAY "...............".
            DISPLAY WithoutZ.
            DISPLAY WithZ.
            DISPLAY Amount_with_Star.
            DISPLAY Amount_with_comma.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
