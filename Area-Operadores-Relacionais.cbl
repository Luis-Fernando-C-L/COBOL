       IDENTIFICATION DIVISION.
       PROGRAM-ID. AREA OPERADORES RELACIONAIS.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR  = LUIS FERNANDO LAZANHA
      * OBJETIVO: RECEBER LARGURA E COMPRIMENTO
      * CALCULAR AREA
      * DATA    = 26/06/2021
      *********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA      PIC 9(03)V99 VALUE ZEROS.
       77 WRK-COMPRIMENTO  PIC 9(03)V99 VALUE ZEROS.
       77 WRK-AREA         PIC 9(04)V99 VALUE ZEROS.
       77 WRK-AREA-ED      PIC Z9,99    VALUES ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'LARGURA: '
           ACCEPT WRK-LARGURA.

           DISPLAY 'COMPRIMENTO: '
           ACCEPT WRK-COMPRIMENTO.

           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
                   MOVE WRK-AREA TO WRK-AREA-ED
                   DISPLAY 'AREA: ' WRK-AREA-ED
           ELSE
               DISPLAY 'FALTA INSERIR UM VALOR'
           END-IF.


           STOP RUN.