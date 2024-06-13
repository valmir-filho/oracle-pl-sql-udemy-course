-- Utilizando o comando CASE.

SET SERVEROUTPUT ON

ACCEPT pdepartment_id PROMPT 'Digite o ID do departamento: '

DECLARE
   vpercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   CASE  vDepartment_id 
   WHEN  80 
   THEN 
        vpercentual := 10;
   WHEN  20 
   THEN 
         vpercentual := 15;
   WHEN  60 
   THEN 
         vpercentual := 20;
   ELSE 
         vpercentual := 5;
   END CASE;
   DBMS_OUTPUT.PUT_LINE('ID do Departamento: ' || vDepartment_id);   
   DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual );   
   COMMIT; 
 END;
 
 -- Outra forma de uso do comando CASE.
 
SET SERVEROUTPUT ON

ACCEPT pdepartment_id PROMPT 'Digite o ID do departamento: '

DECLARE
   vpercentual     NUMBER(3);
   vDepartment_id  employees.employee_id%type := &pdepartment_id;
BEGIN
   CASE  
   WHEN  vDepartment_id = 80 
   THEN 
        vpercentual := 10;
   WHEN  vDepartment_id = 20 
   THEN 
         vpercentual := 15;
   WHEN  vDepartment_id = 60 
   THEN 
         vpercentual := 20;
   ELSE 
         vpercentual := 5;
   END CASE;
   DBMS_OUTPUT.PUT_LINE('ID do Departamento: ' || vDepartment_id);   
   DBMS_OUTPUT.PUT_LINE('Percentual: ' || vpercentual );   
 END;
