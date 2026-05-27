       IDENTIFICATION DIVISION.
       PROGRAM-ID. table_index.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeNames.
           05 EmployeeName PIC X(20) OCCURS 5
            TIMES INDEXED BY empIndex.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    MOVE "John" TO EmployeeName(1).
      *    MOVE "doe" TO EmployeeName(2).
      *    MOVE "jan" TO EmployeeName(3).
      *    
      *    SET empIndex TO 2
      *    DISPLAY EmployeeName(empIndex).

           SET empIndex TO 1.
           MOVE "Alice" TO EmployeeName(empIndex).
           SET EMPINDEX UP BY 1.
           MOVE "AMT" TO EmployeeName(empIndex).

           DISPLAY "Using Index".
           PERFORM VARYING empIndex FROM 1 BY 1 UNTIL empIndex>2
               DISPLAY "Employee: " EmployeeName(empIndex)
           END-PERFORM.
           
           STOP RUN.
       END PROGRAM table_index.
        