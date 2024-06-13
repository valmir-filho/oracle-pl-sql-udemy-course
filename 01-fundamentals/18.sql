-- Utilizando o comando IF.

SET SERVEROUTPUT ON

-- Input de dados.
ACCEPT pDepartment_id PROMPT 'Digite o ID do departamento: '

DECLARE
   vPercentual     NUMBER(3);
   -- O "&" serve para substituir o valor do ACCEPT na variável em questão.
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   IF vDepartment_id  =  80 -- Sales. 
   THEN 
       vPercentual := 10; 
   ELSE 
       IF  vDepartment_id  =  20 -- Marketing. 
       THEN 
           vPercentual := 15; 
       ELSE
           IF  vDepartment_id  =  60 -- IT. 
           THEN 
               vPercentual := 20;
           ELSE 
               vPercentual := 5;
           END IF;
       END IF;
  END IF;
  
  DBMS_OUTPUT.PUT_LINE('ID do Departamento: ' || vDepartment_id);   
  DBMS_OUTPUT.PUT_LINE('Percentual: ' || vpercentual );   
  
  UPDATE employees 
  SET    salary = salary * (1 + vpercentual / 100)
  WHERE department_id =  vDepartment_id;
  COMMIT;
END;
