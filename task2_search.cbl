       IDENTIFICATION DIVISION.
       PROGRAM-ID. task2_search.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeNames.
           05 EmployeeName PIC A(10) OCCURS 5 TIMES
           INDEXED BY e_index.
       01 flag PIC A VALUE "N".
       01 found_index PIC 9(3).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "John" TO EmployeeName(1).
           MOVE "Jame" TO EmployeeName(2).
           MOVE "Alice" TO EmployeeName(3).
           MOVE "Bob" TO EmployeeName(4).
           MOVE "Charlie" TO EmployeeName(5).

      
           SEARCH EmployeeName 
               When EmployeeName(e_index) = "Alice"
                   MOVE "Y" TO flag
                   MOVE e_index TO found_index
           END-SEARCH

           IF flag = 'Y' AND found_index NOT = ZERO
               DISPLAY "Name: " 
               FUNCTION TRIM(EmployeeName(found_index))
                " Found at index " found_index
           Else 
               DISPLAY "Name Not found"
           END-If
           
           STOP RUN.
       END PROGRAM task2_search.
        