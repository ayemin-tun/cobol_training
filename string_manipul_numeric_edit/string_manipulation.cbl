       IDENTIFICATION DIVISION.
       PROGRAM-ID. String_manipulation.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-21.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 first_name PIC A(10) VALUE "John".
       01 last_name PIC A(10) VALUE "Doe".
       01 full_name PIC X(20).

       01 full_n PIC X(20) VALUE "John,Doe".
       01 f_n PIC A(10).
       01 l_n PIC A(10).

       01 my_string PIC X(20) VALUE "    Cobol is fun!".
       01 counter PIC 9(2).
       01 sub_str PIC X(10).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           STRING first_name DELIMITED BY SPACE " "
               DELIMITED BY SIZE last_name DELIMITED BY SPACE 
               INTO full_name
           END-STRING

           DISPLAY "FUll Name : " full_name.

           UNSTRING full_n DELIMITED BY ',' INTO f_n,l_n 
           END-UNSTRING.
           
           DISPLAY " ".
           DISPLAY "------ un stirng ------"
           DISPLAY "first_name: " f_n.
           DISPLAY "last_name: " l_n.

           INSPECT my_string TALLYING counter for all "o".
           DISPLAY "counter for 'o' :" counter .
           INSPECT my_string REPLACING ALL " " By "-".
           DISPLAY my_string.
           DISPLAY ' ------------------- '.
           MOVE my_string(10:5) TO sub_str.
           DISPLAY "Sub String: " sub_str.
           STOP RUN.
       END PROGRAM String_manipulation.
        