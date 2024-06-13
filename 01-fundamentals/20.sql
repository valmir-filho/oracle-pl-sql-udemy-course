-- Utilizando o comando CASE.

SET SERVEROUTPUT ON

ACCEPT pDepartment_id PROMPT 'Digite o ID do departamento: '

DECLARE
   vPercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pDepartment_id;
BEGIN
   CASE  vDepartment_id 
   WHEN  80 
   THEN 
        vPercentual := 10;
   WHEN  20 
   THEN 
         vPercentual := 15;
   WHEN  60 
   THEN 
         vPercentual := 20;
   ELSE 
         vPercentual := 5;
   END CASE;
   DBMS_OUTPUT.PUT_LINE('ID do Departamento: ' || vDepartment_id);   
   DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual );   
   COMMIT; 
 END;
 
 -- Outra forma de uso do comando CASE.
 
SET SERVEROUTPUT ON

ACCEPT pDepartment_id PROMPT 'Digite o ID do departamento: '

DECLARE
   vPercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pDepartment_id;
BEGIN
   CASE  
   WHEN  vDepartment_id = 80 
   THEN 
        vPercentual := 10;
   WHEN  vDepartment_id = 20 
   THEN 
         vPercentual := 15;
   WHEN  vDepartment_id = 60 
   THEN 
         vPercentual := 20;
   ELSE 
         vPercentual := 5;
   END CASE;
   DBMS_OUTPUT.PUT_LINE('ID do Departamento: ' || vDepartment_id);   
   DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual );   
 END;
