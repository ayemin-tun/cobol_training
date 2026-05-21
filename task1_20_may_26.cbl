       IDENTIFICATION DIVISION.
       PROGRAM-ID. TASK_1_intrinsic_func.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-20.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 input_str PIC X(10).
       01 convert_int PIC Z(10).
       01 str_length PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter a numeric value (max 10 characters): "
            WITH NO ADVANCING.
           ACCEPT input_str.

           MOVE FUNCTION LENGTH(FUNCTION TRIM(input_str))
           TO str_length.

           IF FUNCTION TRIM(input_str) IS NUMERIC AND str_length > 0 
           THEN MOVE FUNCTION NUMVAL(FUNCTION TRIM(input_str)) 
               TO convert_int
               DISPLAY "----------------------------------------"
               DISPLAY "Success! Valid Numeric Input."
               DISPLAY "String Length       : " str_length
               DISPLAY "Converted Value     : " convert_int
               DISPLAY "----------------------------------------"
           ELSE
               DISPLAY "----------------------------------------"
               DISPLAY "ERROR: Invalid input! '" 
                       FUNCTION TRIM(input_str) 
                       "' is not a pure numeric value."
               DISPLAY "String Length Checked: " str_length
               DISPLAY "----------------------------------------"
           END-IF.

           STOP RUN.
       END PROGRAM TASK_1_intrinsic_func.
        