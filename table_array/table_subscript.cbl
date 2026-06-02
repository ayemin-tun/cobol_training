       IDENTIFICATION DIVISION.
       PROGRAM-ID. subscript_table.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeNames.
           05 EmployeeName OCCURS 5 TIMES PIC A(20).
       01 subscript PIC 9 VALUE 1.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "John" To EmployeeName(1).
           MOVE "Jame" To EmployeeName(2).

           DISPLAY EmployeeName(subscript).
           Add 1 to subscript.
           DISPLAY EmployeeName(subscript).


           STOP RUN.
       END PROGRAM subscript_table.
        