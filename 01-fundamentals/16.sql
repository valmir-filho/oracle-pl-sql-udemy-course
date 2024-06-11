-- Utilizando o comando DELETE no PL/SQL.

SET SERVEROUTPUT ON

DECLARE
    vEmployee_id employees.employee_id%type := 207;
BEGIN
   DELETE FROM employees
   WHERE employee_id = vEmployee_id;
   COMMIT;
END;
