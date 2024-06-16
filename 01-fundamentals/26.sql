-- Collections: Associative Arrays.

SET SERVEROUTPUT ON

SET VERIFY OFF

DECLARE
  TYPE Numero_Table_Type IS TABLE OF NUMBER(2) 
  INDEX BY BINARY_INTEGER;
  Numero_table  Numero_Table_Type;
BEGIN
  -- Armazena números de 1 a 10 em um Associative Array.
  FOR i IN 1..10
  LOOP
    Numero_Table(i) := i;
  END LOOP;
  
  FOR i IN 1..10
  LOOP
    DBMS_OUTPUT.PUT_LINE('Associative Array: índice = ' || TO_CHAR(i) || ', valor = ' || TO_CHAR(Numero_Table(I)));
  END LOOP;
END;
