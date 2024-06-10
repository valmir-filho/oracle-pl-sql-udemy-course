-- Utilizando funções SQL no bloco PL/SQL.

SET SERVEROUTPUT ON

DECLARE
    vNumero1 NUMBER(13,2);
    vNumero2 NUMBER(13,2);
    vMedia NUMBER(13,2);
BEGIN
    vNumero1 := 5000.88;
    vNumero2 := 3000.88;
    vMedia := ROUND((vNumero1 + vNumero2)/2, 2); -- Uso da função ROUND.
    DBMS_OUTPUT.PUT_LINE('Média = ' || TO_CHAR(vMedia));
END;
