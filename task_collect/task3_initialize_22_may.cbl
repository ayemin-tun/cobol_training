       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3_initialize.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-23.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num_field PIC 9(4) VALUE 3578.
       01 char_field PIC A(15) VALUE 'Hello World'.

       01 Employee_Group.
           05 employee_id PIC 9(4) VALUE 3245.
           05 employee_name PIC A(10) VALUE "John Doe".
           05 employee_age PIC 9(3) VALUE 30.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "===== task3: Initialize =====".

           DISPLAY "Elementary item(Before)".
           DISPLAY num_field " , " char_field.
           INITIALIZE num_field char_field.
           DISPLAY "Elementary Item (After).".
           DISPLAY num_field " , " char_field.

           DISPLAY "Group Item (Before)" Employee_Group.
           INITIALIZE Employee_Group REPLACING NUMERIC By "0000".
           DISPLAY "Group Item (After): " Employee_Group.

           STOP RUN.
       END PROGRAM Task3_initialize.
        