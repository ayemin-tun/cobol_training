       IDENTIFICATION DIVISION.
       PROGRAM-ID. Sub_Pgm.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-28.
       
       DATA DIVISION.
       LINKAGE SECTION.
       01 InputValue PIC 9(4).
       01 OutputValue PIC 9(4).
       
       PROCEDURE DIVISION USING InputValue OutputValue.
           Compute OutputValue = InputValue + 2
           EXIT PROGRAM.
       END PROGRAM Sub_Pgm.
        
