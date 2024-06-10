-- Declaração de variáveis.

SET SERVEROUTPUT ON

DECLARE
    vNumero NUMBER(11,2) := 1200.00;
    vStringTamanhoFixo CHAR(2) := 'R$';
    vStringTamanhoVariável VARCHAR(100) := 'Curitiba - PR';
    vData DATE := '10/06/2024';
    vDataAtual DATE := SYSDATE;
    vVariavelSemValorInicial VARCHAR(100) := '';
BEGIN
    DBMS_OUTPUT.PUT_LINE('Número = ' || vNumero);
    DBMS_OUTPUT.PUT_LINE('Caracter Tamanho Fixo = ' || vStringTamanhoFixo);
    DBMS_OUTPUT.PUT_LINE('Caracter = ' || vStringTamanhoVariável);
    DBMS_OUTPUT.PUT_LINE('Data = ' || vData);
    DBMS_OUTPUT.PUT_LINE('Data Atual = ' || vDataAtual);
    DBMS_OUTPUT.PUT_LINE('Variável Sem Valor Inicial = ' || vVariavelSemValorInicial);
END;
