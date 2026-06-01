       IDENTIFICATION DIVISION.
       PROGRAM-ID. sub_program.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01 num1 PIC 9(5).
       01 num2 PIC 9(5).
       01 result PIC 9(6).
       01 product PIC 9(10).

       
       PROCEDURE DIVISION USING num1 num2 result product.
           COMPUTE result = num1 + num2.
           COMPUTE result = num1 * num2.
           EXIT PROGRAM.
           
       END PROGRAM sub_program.
        