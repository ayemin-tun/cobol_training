       IDENTIFICATION DIVISION.
       PROGRAM-ID. Search_all_table.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 ws_sorted_table.
           05 ws_sorted_element PIC 9(2)
               OCCURS 5 TIMES ASCENDING KEY IS ws_sorted_element 
               INDEXED BY sortIndex.
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 20 TO ws_sorted_element(1).
           MOVE 30 TO ws_sorted_element(2).
           MOVE 10 TO ws_sorted_element(3).
           MOVE 50 TO ws_sorted_element(4).
           MOVE 40 TO ws_sorted_element(5).

           SEARCH ALL ws_sorted_element 
               WHEN ws_sorted_element(sortIndex) = 40
                   DISPLAY "Founded index: " sortIndex
           END-SEARCH
           
           STOP RUN.
       END PROGRAM Search_all_table.
        