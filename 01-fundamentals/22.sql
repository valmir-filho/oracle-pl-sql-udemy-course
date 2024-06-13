-- FOR LOOP.

SET SERVEROUTPUT ON

ACCEPT pLimite PROMPT 'Digite o valor do limite: '

DECLARE
  vInicio  INTEGER(3) := 1;
  vFim     NUMBER(38) := &pLimite;
BEGIN
FOR i IN vinicio..vfim  LOOP
  DBMS_OUTPUT.PUT_LINE('Número = ' || to_char(i) );
END LOOP;
END;
