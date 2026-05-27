       IDENTIFICATION DIVISION.
       PROGRAM-ID. Goto_stat.
       AUTHOR. Aye Min Tun.
       DATE-WRITTEN. 2026-05-26.
       
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           
       
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM Start_par.
           STOP RUN.
       
       Start_Par.
           DISPLAY "Start Paragraph".
           GO TO Middle_par.
       
       Middle_par.
           DISPLAY "Middle Paragraph".
           GO TO End_par.

       End_par.
           DISPLAY "End Paragraph".
           
       END PROGRAM Goto_stat.
        