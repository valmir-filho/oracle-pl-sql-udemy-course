-- Tratamento de exceções.

SET SERVEROUTPUT ON
  
SET VERIFY OFF
  
ACCEPT  pEmployee_id PROMPT 'Digite o Id do Empregado: '

DECLARE
  vFirst_name   employees.first_name%TYPE;
  vLast_name    employees.last_name%TYPE;
  vEmployee_id  employees.employee_id%TYPE := &pEmployee_id;
BEGIN
  SELECT first_name, last_name
  INTO   vfirst_name, vlast_name
  FROM   employees
  WHERE  employee_id = vEmployee_id;
  DBMS_OUTPUT.PUT_LINE('Empregado: ' || vfirst_name || ' ' || vlast_name);
EXCEPTION
  WHEN NO_DATA_FOUND 
  THEN
     RAISE_APPLICATION_ERROR(-20001, 'Empregado nÃ£o encontrado, id = ' || 
     TO_CHAR(vEmployee_id));
  WHEN OTHERS 
  THEN
     RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle - ' || SQLCODE || SQLERRM);
END;
