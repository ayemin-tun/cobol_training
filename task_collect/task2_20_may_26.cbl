       IDENTIFICATION DIVISION.
       PROGRAM-ID. task_2_reversed_word.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-20.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ws_number_input PIC 9(5) VALUE ZERO.
       01 ws_format_message PIC X(30) VALUE "The entered number is: ".
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "===== COBOL reverse Word (task2) =====".
           DISPLAY "Enter a number (max 5 digits): " WITH NO ADVANCING.
           ACCEPT ws_number_input.
           DISPLAY " --------------------------------------------".
           DISPLAY ws_format_message " " ws_number_input.
           DISPLAY " -------------------------------------------- ".
           STOP RUN.
       END PROGRAM task_2_reversed_word.
        