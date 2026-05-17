       IDENTIFICATION DIVISION.
       PROGRAM-ID. cal_price_tax.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-15.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 TAX_RATE PIC 9(2)V99 VALUE 0.08.
       77 PRICE PIC 9(4)V9 VALUE 1500.00.
      
       01 quantity PIC 9(3) VALUE 5.
       01 total_price PIC 9(4)V9.
       01 total_price_with_tax PIC 9(4)V9.
       01 comput_tax PIC 9(4)V9.   
       01 DisplayTotal PIC $ZZ,ZZ9.99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           COMPUTE comput_tax = (PRICE * quantity) * TAX_RATE.
           COMPUTE total_price = (PRICE * quantity).
           COMPUTE total_price_with_tax = total_price + comput_tax.
           
           MOVE total_price TO DisplayTotal.
           DISPLAY "RECEIPT".
           DISPLAY "-------------------------".
           DISPLAY "Price: " DisplayTotal.
           MOVE comput_tax TO DisplayTotal.
           DISPLAY "Tax: " DisplayTotal.
           MOVE total_price_with_tax TO DisplayTotal.
           DISPLAY "Total: " DisplayTotal.
           
           STOP RUN.
       END PROGRAM cal_price_tax.
        