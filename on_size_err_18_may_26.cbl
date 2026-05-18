       IDENTIFICATION DIVISION.
       PROGRAM-ID. OnSizeError.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-18.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 total_sale PIC 9(3).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           COMPUTE total_sale = 999 + 15.
      *        ON SIZE ERROR 
      *            DISPLAY "Size error occurred "
      *        NOT ON SIZE ERROR 
            DISPLAY "Total Sale: " total_sale.
           
           STOP RUN.
       END PROGRAM OnSizeError.
        
