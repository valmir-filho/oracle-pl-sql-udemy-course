-- WHILE LOOP.

SET SERVEROUTPUT ON

ACCEPT pLimite PROMPT 'Digite o valor do limite: '

DECLARE
  vNumero  NUMBER(38) :=  1;
  vLimite  NUMBER(38) := &pLimite;
BEGIN
WHILE  vNumero <= vLimite LOOP
    DBMS_OUTPUT.PUT_LINE('Número =  ' || to_char(vNumero));
    vNumero := vNUmero + 1;
END LOOP;
END;
