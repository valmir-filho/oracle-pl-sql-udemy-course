-- Tipos de dados mais utilizados.

SET SERVEROUTPUT ON

DECLARE
    vNumero NUMBER(11,2) := 1200.00;
    vStringTamanhoFixo CHAR(2) := 'R$';
    vStringTamanhoVariável VARCHAR(100) := 'Curitiba - PR';
    vDataAtual DATE := SYSDATE;
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('Número = ' || vNumero);
    DBMS_OUTPUT.PUT_LINE('Caracter Tamanho Fixo = ' || vStringTamanhoFixo);
    DBMS_OUTPUT.PUT_LINE('Caracter = ' || vStringTamanhoVariável);
    DBMS_OUTPUT.PUT_LINE('Data Atual = ' || vDataAtual);
END;
