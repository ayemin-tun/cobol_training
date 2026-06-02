       IDENTIFICATION DIVISION.
       PROGRAM-ID. Task3_searchall.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeNames.
           05 EmployeeName PIC A(10) OCCURS 5 TIMES
           ASCENDING KEY IS EmployeeName
           INDEXED BY e_index.
       01 flag PIC A VALUE "N".
       01 found_index PIC 9(3).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "ALice" TO EmployeeName(1).
           MOVE "Bob" TO EmployeeName(2).
           MOVE "Charlie" TO EmployeeName(3).
           MOVE "Jane" TO EmployeeName(4).
           MOVE "John" TO EmployeeName(5).

           SEARCH ALL EmployeeName
               When EmployeeName(e_index) = "Charlie"
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
       END PROGRAM Task3_searchall.
        