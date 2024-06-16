-- Cursor explícito.

SET SERVEROUTPUT ON

SET VERIFY OFF

DECLARE
  CURSOR employees_cursor IS
  SELECT * FROM employees;
  
  employees_record employees_cursor%rowtype; 

BEGIN  
  OPEN employees_cursor; 
  LOOP
    FETCH employees_cursor INTO employees_record;
    EXIT WHEN employees_cursor%notfound;
    DBMS_OUTPUT.PUT_LINE(employees_record.employee_id || ' - ' ||
                         employees_record.first_name || ' ' || 
                         employees_record.last_name || ' - ' ||
                         employees_record.department_id || ' - ' ||
                         employees_record.job_id || ' - ' ||
                         employees_record.phone_number || ' - ' ||
                         LTRIM(TO_CHAR(employees_record.salary, 'L99G999G999D99')));
  END LOOP;
  CLOSE employees_cursor;
END;
