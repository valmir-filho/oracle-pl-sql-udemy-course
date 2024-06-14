-- Criando uma variável Record (semelhante a um dicionário no Python). 

SET SERVEROUTPUT ON

SET VERIFY OFF -- Comando para não imprimir o bloco de código na saída do console.

ACCEPT pEmployee_id PROMPT 'Digite o ID do empregado: '

DECLARE
TYPE  employee_record_type IS RECORD 
          (employee_id   employees.employee_id%type,
           first_name    employees.first_name%type,
           last_name     employees.last_name%type,
           email         employees.email%type,
           phone_number  employees.phone_number%type);
employee_record employee_record_type; 

BEGIN
SELECT  employee_id, first_name, last_name, email, phone_number
INTO    employee_record
FROM    employees
WHERE   employee_id = &pEmployee_id;
DBMS_OUTPUT.PUT_LINE(employee_record.employee_id || ' - ' || 
                     employee_record.first_name || ' - ' || 
                     employee_record.last_name || ' - ' || 
                     employee_record.phone_number);
END;

/*
Obs.: Se a variável record foi declarada com o mesmo nome da tabela (usando o atributo %ROWTYPE), ela acaba recebendo
todos os campos dela.
*/

-- Criando um PL/SQL Record utilizando atributo %ROWTYPE

SET SERVEROUTPUT ON
          
SET VERIFY OFF
          
ACCEPT pEmployee_id PROMPT 'Digite o ID do empregado: '

DECLARE
employee_record   employees%rowtype;
vEmployee_id      employees.employee_id%type := &pEmployee_id;
BEGIN
SELECT  * 
INTO    employee_record
FROM    employees
WHERE   employee_id = vEmployee_id;
DBMS_OUTPUT.PUT_LINE(employee_record.employee_id || ' - ' || 
                     employee_record.first_name || ' - ' || 
                     employee_record.last_name || ' - ' || 
                     employee_record.phone_number || ' - ' ||
                     employee_record.job_id);
END;
