-- Cursor implícito.

/*
- SQL%FOUND: Verifica se o UPDATE afetou alguma linha. Se sim, imprime uma
mensagem indicando que o UPDATE foi bem-sucedido.
- SQL%ROWCOUNT: Mostra o número de linhas que foram afetadas pelo UPDATE.
- SQL%NOTFOUND: Poderia ser usado alternativamente a SQL%FOUND para verificar
se nenhuma linha foi afetada.
*/

SET SERVEROUTPUT ON

DECLARE
   vdepartment_id  employees.department_id%type := 60;
   vpercentual     NUMBER(3) := 10;
BEGIN
   -- Executa o UPDATE.
   UPDATE employees 
   SET salary = salary * (1 + vpercentual / 100)
   WHERE department_id =  vdepartment_id;
   -- Verifica o resultado do UPDATE.
   IF SQL%FOUND THEN
       DBMS_OUTPUT.PUT_LINE('Update bem-sucedido.');
       DBMS_OUTPUT.PUT_LINE('Número de empregados atualizados: ' || SQL%ROWCOUNT);
   ELSE
       DBMS_OUTPUT.PUT_LINE('Nenhum empregado foi atualizado.');
   END IF;
   -- Executa o ROLLBACK.
   ROLLBACK;
   -- Confirmar que o ROLLBACK foi realizado.
   DBMS_OUTPUT.PUT_LINE('Operação revertida com sucesso.');
END;
