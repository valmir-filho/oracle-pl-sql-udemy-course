-- Blocos aninhados e escopo de identificadores.

SET SERVEROUTPUT ON

DECLARE
  vBloco1 VARCHAR2(20) := 'Bloco 1';
BEGIN
  DBMS_OUTPUT.PUT_LINE('Referenciando a variável do Bloco 1: ' || vBloco1);
  -- Se referenciar "vBloco2" aqui ocorrerá um erro.
  DECLARE
    vBloco2 VARCHAR2(20) := 'Bloco 2';
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Referenciando a variável do Bloco 1: ' || vBloco1);
    DBMS_OUTPUT.PUT_LINE('Referenciando a variável do Bloco 2: ' || vBloco2);
  END;
  DBMS_OUTPUT.PUT_LINE('Referenciando a variável do Bloco 1: ' || vBloco1);
  -- Se referenciar "vBloco2" aqui ocorrerá um erro.
END;
