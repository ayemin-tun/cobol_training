       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task2Sub.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       
       01 CURRENT_DATE_DATA.
           05 current_year PIC 9(4).
           05 current_month PIC 9(2).
           05 current_day PIC 9(2).
           05 current_time PIC 9(13).

       LINKAGE SECTION.
       01 lk_birthyear PIC 9(4).
       01 lk_userage PIC 9(2).

       PROCEDURE DIVISION USING lk_birthyear lk_userage.
       MAIN_LOGIC.
           MOVE FUNCTION CURRENT-DATE TO CURRENT_DATE_DATA.
           COMPUTE lk_userage = current_year - lk_birthyear.
           EXIT PROGRAM.
       END PROGRAM Task2Sub.
        