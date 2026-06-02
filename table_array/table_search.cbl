       IDENTIFICATION DIVISION.
       PROGRAM-ID. Table_search.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-27.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS_Table.
           05 Ws_Element PIC 9(2) OCCURS 5 TIMES INDEXED BY NameIndex.
       
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 10 TO Ws_Element(1).
           MOVE 20 TO Ws_Element(2).
           MOVE 30 TO Ws_Element(3).
           MOVE 40 TO Ws_Element(4).
           MOVE 50 TO Ws_Element(5).

           SET NameIndex TO 1.
           SEARCH Ws_Element
               When Ws_Element(NameIndex) = 30
                   DISPLAY "Found At Index: " NameIndex
           END-SEARCH.

           STOP RUN.
       END PROGRAM Table_search.
        