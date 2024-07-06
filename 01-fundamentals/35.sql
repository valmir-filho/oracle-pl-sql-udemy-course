-- Database DML triggers a nível de Linha.

CREATE OR REPLACE TRIGGER A_IUD_EMPLOYESS_R_TRG
  AFTER INSERT OR UPDATE OF SALARY OR DELETE 
  ON EMPLOYEES
  FOR EACH ROW
DECLARE
	vevento       employees_log.evento%TYPE;
	vemployee_id  employees_log.employee_id%TYPE;
BEGIN
	CASE
		WHEN INSERTING 
        THEN
			vevento      := 'I';
			vemployee_id := :new.employee_id;
		WHEN UPDATING 
        THEN
			vevento      := 'U';
			vemployee_id := :new.employee_id;
		ELSE
			vevento      := 'D';
			vemployee_id := :old.employee_id;
	END CASE;
	INSERT INTO employees_log
		(employees_log_id, 
         dt_log, 
         usuario, 
         evento, 
         employee_id, 
         salary_old, 
         salary_new)
	VALUES
		(employees_log_seq.nextval,
		 SYSDATE,
		 USER,
		 vevento,
		 vemployee_id,
		 :old.salary,
		 :new.salary);
END A_IUD_EMPLOYESS_R_TRG;
