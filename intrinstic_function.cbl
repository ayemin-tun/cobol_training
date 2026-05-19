       IDENTIFICATION DIVISION.
       PROGRAM-ID. intrinstic_function.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-19.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 result1 PIC S9(3).
       01 result2 PIC 9(3)V99.
         01 WS-NUM PIC 9(3).
       01 num1 PIC 9(2) VALUE 20.
       01 num2 PIC 9(2) VALUE 43.    

       01 str1 PIC X(20) VALUE "Hello, World".
       01 strRes PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE FUNCTION ABS(-10) TO result1.
           DISPLAY "Absolute Value of -10: " result1.
           DISPLAY " ".
           MOVE FUNCTION SQRT(56) TO result2.
           DISPLAY "Square Root of 16: " result2.
           DISPLAY " ".
           MOVE FUNCTION MAX(num1, num2) TO result1.
           DISPLAY "Maximum of " num1 " and " num2 ": " result1.
           DISPLAY " ".
           MOVE FUNCTION MIN(num1, num2) TO result1.
           DISPLAY "Minimum of " num1 " and " num2 ": " result1.
           DISPLAY " ".
           MOVE FUNCTION MOD(-10,3) TO result1.
           DISPLAY "Remainder of 17 divided by 5: " result1.
           DISPLAY " ".
           MOVE FUNCTION REM(-10,3) TO result1.
           DISPLAY "Remainder of 17 divided by 5: " result1.
           MOVE FUNCTION RANDOM TO result2.
              DISPLAY "Random Number: " result2.
           
           COMPUTE WS-NUM = FUNCTION INTEGER(FUNCTION RANDOM * 100) + 1
           DISPLAY "Computed Integer: " WS-NUM

           DISPLAY " ".
           MOVE FUNCTION LENGTH(
               FUNCTION TRIM(str1)
           ) To strRes.
           DISPLAY "Actual String Length : " strRes.
           DISPLAY " ".

      *    MOVE FUNCTION REVERSE(str1) To str1.
      *    DISPLAY "Reversed String: " str1.

           DISPLAY " ".
           MOVE FUNCTION UPPER-CASE(str1) To str1.
           DISPLAY "Upper Case String: " str1.

           DISPLAY " ".
           MOVE FUNCTION LOWER-CASE(str1) To str1.
           DISPLAY "Lower Case String: " str1.
           STOP RUN.
       END PROGRAM intrinstic_function.
        