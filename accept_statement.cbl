       IDENTIFICATION DIVISION.
       PROGRAM-ID. accept_sta.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-14.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *01 user_namae PIC A(20).
       01 current_date PIC 9999/99/99.
       01 current_tiem PIC 99/99/99.
       01 DayofWeek PIC 9.
       01 Day1 PIC 9.

      *Move Numeric Data 
       01 source_value PIC 9(5)V99 VALUE 12345.3.
       01 destination_value PIC 9(5)V99.
       01 small_value PIC 9(2)V9 VALUE 13.2.

       01 source_string PIC X(10) VALUE "Helloqld".
       01 destination_str PIC X(10).
       01 turncate_str PIC X(3).

       01 sourceValue PIC 9(4) VALUE 2026.
       01 Dest1 PIC 9(4).
       01 Dest2 PIC 9(4).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Enter Your Name: ".
      *    Accept user_namae.
      *    DISPLAY "Your Name is: " user_namae.
           ACCEPT current_date FROM DATE YYYYMMDD.
           ACCEPT current_tiem FROM TIME.
           ACCEPT DayofWeek FROM DAY-OF-WEEK.
           ACCEPT Day1 FROM DAY.

           DISPLAY "Current Date: " current_date.
           DISPLAY "Current Time: " current_tiem.
           DISPLAY "Day of Week: " DayofWeek.
           DISPLAY "Day: " Day1.
           DISPLAY ".................".

           MOVE source_value TO destination_value.
           DISPLAY "Destination Value after move: " destination_value.
           MOVE small_value TO destination_value.
           DISPLAY "...................".

           DISPLAY "Source Value: " source_value.
           DISPLAY "Destination Value: " destination_value.
           DISPLAY "Small Value: " small_value.
           DISPLAY "....................".
           
           MOVE source_string TO destination_str.
           DISPLAY "Destination String after move: " destination_str.
           DISPLAY "....................".

           MOVE source_string TO turncate_str.
           DISPLAY "Truncated String: " turncate_str.
           DISPLAY "....................".
           
           MOVE sourceValue TO Dest1,Dest2.
           DISPLAY "Destination 1: " Dest1.
           DISPLAY "Destination 2: " Dest2.

           STOP RUN.
       END PROGRAM accept_sta.
        