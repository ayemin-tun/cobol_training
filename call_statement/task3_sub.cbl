       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3Sub.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01 lk_num1 PIC 9(3).
       01 lk_num2 PIC 9(3).
       01 lk_result_sum PIC 9(4).
       01 lk_result_prod PIC 9(6).
       
       
       PROCEDURE DIVISION USING lk_num1 lk_num2 lk_result_sum 
           lk_result_prod.
       
           COMPUTE lk_result_sum = lk_num1 + lk_num2.
           COMPUTE lk_result_prod = lk_num1 * lk_num2.

           EXIT PROGRAM.

       
       END PROGRAM Task3Sub.
        