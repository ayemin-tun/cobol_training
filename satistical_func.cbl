       IDENTIFICATION DIVISION.
       PROGRAM-ID. satistical_func.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-19.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 num1 PIC 9(3) VALUE 10.
       01 num2 PIC 9(3) VALUE 15.
       01 num3 PIC 9(3) VALUE 20.
       01 result PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Statistical Function".
           MOVE FUNCTION MEAN(num1, num2, num3) TO result.
              DISPLAY "Mean: " result.
           
           STOP RUN.
       END PROGRAM satistical_func.
        