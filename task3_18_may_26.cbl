       IDENTIFICATION DIVISION.
       PROGRAM-ID. task3_comp_comp3.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-18.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 COMP_VAL.
           05 comp_val1 USAGE COMP PIC 9(3).
           05 comp_val2 USAGE COMP PIC 9(3).  
       
       01 COMP3_VAL.
           05 comp3_val1 USAGE COMP-3 PIC 9(3).
           05 comp3_val2 USAGE COMP-3 PIC 9(3).
       
       01 cal_value1 PIC 9(3).
       01 cal_value2 PIC 9(3).  
       
       01 greater_value PIC 9(3).
       01 lesser_value PIC 9(3).  

       01 result PIC 9(3).
       01 format_display PIC Z(3).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY "--- Compare COMP ---".
           DISPLAY "Enter first COMP value: " WITH NO ADVANCING.
           ACCEPT comp_val1.
           DISPLAY "Enter second COMP value: " WITH NO ADVANCING.
           ACCEPT comp_val2.
           MOVE comp_val1 TO cal_value1.
           MOVE comp_val2 TO cal_value2.
           PERFORM COMPARE_AND_SUBTRACT.

           DISPLAY "  ".
           DISPLAY "--- Compare COMP-3 ---".
           DISPLAY "Enter first COMP-3 value: " WITH NO ADVANCING.
           ACCEPT comp3_val1.
           DISPLAY "Enter second COMP-3 value: " WITH NO ADVANCING.
           ACCEPT comp3_val2.
           MOVE comp3_val1 TO cal_value1.
           MOVE comp3_val2 TO cal_value2.
           PERFORM COMPARE_AND_SUBTRACT.
           
           STOP RUN.
       
       COMPARE_AND_SUBTRACT.
           IF cal_value1 > cal_value2 THEN
               MOVE cal_value1 TO greater_value
               MOVE cal_value2 TO lesser_value
           ELSE
               MOVE cal_value2 TO greater_value
               MOVE cal_value1 TO lesser_value
           END-IF.

           SUBTRACT lesser_value FROM greater_value GIVING result.
           MOVE result TO format_display.
           DISPLAY  "Subtract Value: " format_display.

       END PROGRAM task3_comp_comp3.
        