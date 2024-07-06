-- Database DML triggers a nível de comando.

CREATE OR REPLACE TRIGGER B_I_EMPLOYEES_S_TRG
BEFORE INSERT
ON employees
BEGIN
  IF  (TO_CHAR(SYSDATE, 'DAY') IN ('SABADO', 'DOMINGO') OR
       TO_NUMBER(TO_CHAR(SYSDATE,'HH24')) NOT BETWEEN 8 AND 18) 
  THEN
       RAISE_APPLICATION_ERROR( -20001,'O cadastramento de Empregados é permitido em dias de semana dentro do horário comercial.');
  END IF;
END;

-- Testando a validação da trigger.

BEGIN
  PCK_EMPREGADOS.PRC_INSERE_EMPREGADO('George', 'Harrison','GHARRISON','515.258.5690',SYSDATE,'IT_PROG',25000,NULL,103,60);
  COMMIT;
END;
