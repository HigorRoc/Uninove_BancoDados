/*
====================================================
Criar uma procedure que deverá receber o código
de um cliente e a partir deste dado imprimir o
seu nome e seu e-mail.
====================================================
*/
CREATE TABLE CLIENTE(
    CODIGO NUMBER(4) PRIMARY KEY,
    NOME VARCHAR2(30),
    EMAIL VARCHAR2(30)
);

DESC CLIENTE;
SELECT * FROM CLIENTE;
DROP TABLE CLIENTE;

INSERT INTO CLIENTE VALUES(2222, 'HIGOR ROCHA', 'HR@DA.COM.BR');
INSERT INTO CLIENTE VALUES(3333, 'SAMANTA CAETANO', 'SC@DA.COM.BR');

CREATE OR REPLACE PROCEDURE PROC_CLIENTE (
    V_CODIGO IN NUMBER) IS
    V_NOME VARCHAR2(30);
    V_EMAIL VARCHAR2(30);
BEGIN
    SELECT NOME, EMAIL INTO V_NOME, V_EMAIL FROM CLIENTE WHERE CODIGO = V_CODIGO;
    DBMS_OUTPUT.PUT_LINE ('NOME: ' || V_NOME || ' ---- EMAIL: ' || V_EMAIL);
END PROC_CLIENTE;

EXEC PROC_CLIENTE(2222);
