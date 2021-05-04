--ATIVIDADE 01
DECLARE
    NUM1 NUMBER(2);
    NUM2 NUMBER(2);
    RESULT NUMBER(2);
BEGIN
    NUM1 := &NUM_1;
    NUM2 := &NUM_2;
    RESULT := NUM1+NUM2;
    DBMS_OUTPUT.PUT_LINE('O VALOR DA SOMA É: ' || RESULT);
END;

/*
====================================================
*/

--ATIVIDADE 02
DECLARE
    SALARIO_ANTIGO NUMBER(10,2);
    SALARIO_NOVO NUMBER(10,2);
    AUMENTO FLOAT;
    FUNCIONARIO VARCHAR2(30) := 'HIGOR ROCHA'; 
BEGIN
    SALARIO_ANTIGO := &SALARIO_FUNCIONARIO;
    AUMENTO := 0.25;
    SALARIO_NOVO := SALARIO_ANTIGO * (1 + AUMENTO);
    
    DBMS_OUTPUT.PUT_LINE('NOME FUNCIONÁRIO: ' || FUNCIONARIO);
    DBMS_OUTPUT.PUT_LINE('SALARIO ATUAL: R$' || SALARIO_NOVO);
END;

/*
====================================================
*/

--ATIVIDADE 03
DECLARE
    NUM NUMBER(2);
BEGIN
    NUM := &NUM_PESQUISA;
    -- MOD RETORNA O RESTO DE UMA DIVISÃO
    IF MOD(NUM,2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('O NÚMERO ' || NUM || ' É PAR');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O NÚMERO ' || NUM || ' É IMPÁR');
    END IF;
END;

/*
====================================================
*/

--ATIVIDADE 04
DECLARE
    V_ANO NUMBER(4) := 2021;
BEGIN
    IF (MOD(V_ANO,4) = 0 AND MOD(V_ANO,100) != 0)
    OR (MOD(V_ANO,400) = 0) THEN
        DBMS_OUTPUT.PUT_LINE('O ano ' || V_ANO || ' é BISSEXTO');
    ELSE
        DBMS_OUTPUT.PUT_LINE('O ano ' || V_ANO || ' não é BISSEXTO');
    END IF;
END;
