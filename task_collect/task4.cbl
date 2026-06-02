       IDENTIFICATION DIVISION.
       PROGRAM-ID. task4.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-14.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 User_Name.
           05 first_name PIC A(10).
           05 last_name PIC A(10).
       01 full_name PIC A(20).
       01 age PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter First Name: ".
           ACCEPT first_name.
           DISPLAY "Enter Last Name: ".
           ACCEPT last_name.
           DISPLAY "Enter Age: ".
           ACCEPT age.

           STRING first_name DELIMITED BY SPACE
                  " "            DELIMITED BY SIZE
                  last_name      DELIMITED BY SPACE
                  INTO full_name.
      
      /     MOVE USER_NAME TO full_name.
           DISPLAY "Name: " full_name.
           DISPLAY "Age: " age.
           STOP RUN.
       END PROGRAM task4.
        