-- Declaração de variáveis de acordo com as colunas das tabelas do banco de dados.

SET SERVEROUTPUT ON

DECLARE
    -- Tipo VARCHAR2(20) (de acordo com a tabela do banco de dados).
    vfirst_name employees.first_name%TYPE;
    -- Tipo VARCHAR2(25) (de acordo com a tabela do banco de dados).
    vlast_name employees.last_name%TYPE;
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('FIRST_NAME = ' || vfirst_name);
    DBMS_OUTPUT.PUT_LINE('FIRST_NAME = ' || vlast_name);
END;
