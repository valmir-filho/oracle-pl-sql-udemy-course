-- Utilizando o comando IF com ELSIF.

SET SERVEROUTPUT ON

ACCEPT pdepartment_id PROMPT 'Digite o Id do departamento: '

DECLARE
   vPercentual     NUMBER(3);
   -- O "&" serve para substituir o valor do ACCEPT na variável em questão.
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   IF  vDepartment_id  =  80 
   THEN 
       vPercentual := 10;
   ELSIF vDepartment_id  =  20 
   THEN 
       vPercentual := 15;
   ELSIF vDepartment_id  =  60 
   THEN 
       vPercentual := 20;
   ELSE
       vPercentual := 5;
   END IF;
  DBMS_OUTPUT.PUT_LINE('Id do Departamento: ' || vDepartment_id);   
  DBMS_OUTPUT.PUT_LINE('percentual: ' || vPercentual );   
  UPDATE employees 
  SET    salary = salary * (1 + vPercentual / 100)
  WHERE department_id =  vDepartment_id;
  COMMIT;
END;
