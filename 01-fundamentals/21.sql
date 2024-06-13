-- LOOP básico.

SET SERVEROUTPUT ON

ACCEPT pLimite PROMPT 'Digite o valor do limite: '

DECLARE
  vNumero  NUMBER(38) := 1;
  vLimite  NUMBER(38) := &pLimite;
BEGIN
LOOP 
  DBMS_OUTPUT.PUT_LINE('Número = ' || to_char(vNumero));
  EXIT WHEN vNumero = vLimite;
  vNumero := vNumero + 1; -- Iterador.
END LOOP;
END;
