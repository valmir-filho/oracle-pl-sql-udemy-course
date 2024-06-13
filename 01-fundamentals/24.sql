-- Controlando LOOPs aninhados.

SET SERVEROUTPUT ON

DECLARE
  vTotal   NUMBER(38) :=  1;
BEGIN
<<LOOP1>> -- Label do LOOP.
FOR i IN 1..8 LOOP
    DBMS_OUTPUT.PUT_LINE('I =  ' || to_char(i));
    <<LOOP2>> -- Label do LOOP.
    FOR j IN 1..8 LOOP
      DBMS_OUTPUT.PUT_LINE('J =  ' || to_char(j));
      DBMS_OUTPUT.PUT_LINE('Total =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
      vTotal := vTotal * 2;
    END LOOP;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Total Final =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
END;

-- Utilizando EXIT com o Label do LOOP.

SET SERVEROUTPUT ON

DECLARE
  vTotal   NUMBER(38) :=  1;
BEGIN
<<LOOP1>>
FOR i IN 1..8 LOOP
    DBMS_OUTPUT.PUT_LINE('I =  ' || to_char(i));
    <<LOOP2>>
    FOR j IN 1..8 LOOP
      DBMS_OUTPUT.PUT_LINE('J =  ' || to_char(j));
      DBMS_OUTPUT.PUT_LINE('Total =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
      vTotal := vTotal * 2;
      EXIT LOOP1 WHEN vtotal > 1000000000000000;
    END LOOP;
END LOOP;
DBMS_OUTPUT.PUT_LINE('Total Final =  ' || to_char(vTotal,'99G999G999G999G999G999G999G999D99'));
END;
