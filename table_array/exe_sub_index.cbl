       IDENTIFICATION DIVISION.
       PROGRAM-ID. Exercise_sub_index.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 EmployeeNames.
           05 EmployeeName PIC A(20) OCCURS 5 TIMES
               INDEXED BY empIndex.
       01 search_name PIC A(10) VALUE "Alice".
       01 subscript PIC 9 VALUE 1.
       01 found PIC X VALUE "N".
       01 foundIndex PIC 9(2).
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "John" TO EmployeeName(1).
           MOVE "Joe" TO EmployeeName(2).
           MOVE "Alice" TO EmployeeName(3).
           MOVE "Dame" TO EmployeeName(4).
           MOVE "Will" TO EmployeeName(5).
           
           DISPLAY "Display using Subscript".
           DISPLAY "----------------------".
           PERFORM VARYING subscript FROM 1 BY 1 UNTIL subscript>5
               DISPLAY "Name: " employeeName(subscript)
           END-PERFORM

           DISPLAY "Display using index".
           DISPLAY "----------------------".
           SET empIndex TO 1.
           PERFORM VARYING empIndex FROM 1 BY 1 UNTIL empIndex>5
               DISPLAY "Name: " employeeName(empIndex)
           END-PERFORM

           DISPLAY "Search with index".
           SET empIndex TO 1
           DISPLAY " --------------------- ".
           SEARCH EmployeeName
               WHEN EmployeeName(empIndex) = search_name  
                   MOVE "Y" TO found
                   MOVE empIndex TO foundIndex
           END-SEARCH.

           IF found = 'Y'
               DISPLAY "Name found at index " foundIndex
           ELSE
               DISPLAY "Name Not found"
           END-IF


           STOP RUN.
       END PROGRAM Exercise_sub_index.
        