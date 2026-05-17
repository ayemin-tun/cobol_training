       IDENTIFICATION DIVISION.
       PROGRAM-ID. Boolean_Flag.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-13.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeStatus PIC X VALUE "Y".
           88 isActive VALUE "Y".
           88 isInactive VALUE "N".
       01 PaymentStatus PIC 9 VALUE 1.
           88 PaymentPending VALUE 1.
           88 PaymentCompleted VALUE 2.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           IF isActive 
               DISPLAY "Employee is active."
           ELSE 
               DISPLAY "Employee is inactive."
           END-IF.

           IF PaymentPending
               DISPLAY "Payment is pending."
           ELSE IF PaymentCompleted    
               DISPLAY "Payment is completed."
           ELSE
               DISPLAY "Payment Failed."
           END-IF.
           DISPLAY "Employee Status: " EmployeeStatus.
           DISPLAY "Payment Status: " PaymentStatus.
           STOP RUN.
       END PROGRAM Boolean_Flag.
        