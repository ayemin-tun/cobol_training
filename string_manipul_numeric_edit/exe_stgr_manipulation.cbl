       IDENTIFICATION DIVISION.
       PROGRAM-ID. exercise_string_manipulation.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-21.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 first_name PIC A(10).
       01 middle_name PIC A(10).
       01 last_name PIC A(10).

       01 full_name PIC A(25).

       01 ext_f_name PIC A(10).
       01 ext_m_name PIC A(10).
       01 ext_l_name PIC A(10).

       01 name_counter PIC 9(2).
       01 replace_full_name PIC A(20).

       01 sub_string PIC A(5).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "-----(1) Concatenate Strings ------ ".
           DISPLAY "Enter first name: " WITH NO ADVANCING.
           Accept first_name.
           DISPLAY "Enter middle name: " WITH NO ADVANCING.
           Accept middle_name.
           DISPLAY "Enter last name: " WITH NO ADVANCING.
           Accept last_name.

           STRING first_name DELIMITED BY SPACE " " DELIMITED BY SIZE 
               middle_name DELIMITED BY SPACE " " DELIMITED BY SIZE 
               last_name DELIMITED BY SPACE 
               INTO full_name
           END-STRING.

           DISPLAY "Full Name: " full_name.

           DISPLAY " ----- (2) Extract Parts of a String -----".
           DISPLAY "Full Name: " full_name.

           UNSTRING full_name DELIMITED BY ' ' INTO
               ext_f_name,ext_m_name,ext_l_name 
           END-UNSTRING
           DISPLAY "Extract First name: " ext_f_name.
           DISPLAY "Extract middle name: " ext_m_name.
           DISPLAY "Extract last name: " ext_l_name.

           DISPLAY " ----- (3) Count and replace -----".
           Move full_name TO replace_full_name.
           INSPECT replace_full_name TALLYING name_counter FOR ALL ' '
           INSPECT replace_full_name REPLACING ALL ' ' By '_'.
           DISPLAY "Full Name Counter: " name_counter.
           DISPLAY "Replace Full Name: " replace_full_name.

           DISPLAY " ----- (4) Substring ---------- ".
           MOVE full_name(1:5) TO sub_string.
           DISPLAY "Substring (first 5 character): " sub_string.

           STOP RUN.
       END PROGRAM exercise_string_manipulation.
        