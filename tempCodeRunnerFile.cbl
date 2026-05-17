       IDENTIFICATION DIVISION.
       PROGRAM-ID. accept_sta.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-14.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *01 user_namae PIC A(20).
       01 current_date PIC 9999/99/99.
       01 current_tiem PIC 99:99:99.
       01 DayofWeek PIC 9.
       01 Day1 PIC 9.
     
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    DISPLAY "Enter Your Name: ".cl
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
           STOP RUN.
       END PROGRAM accept_sta.
        