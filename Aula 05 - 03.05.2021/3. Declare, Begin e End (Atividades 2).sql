CREATE TABLE NOTAS(
        ALUNO_RA CHAR(5) PRIMARY KEY,
        COD_DISC CHAR(4),
        AV1 NUMBER(4,2),
        AV2 NUMBER(4,2),
        AV3 NUMBER(4,2),
        AULAS NUMBER(2),
        FALTAS NUMBER(2));

INSERT INTO NOTAS VALUES ('12345', '3520', 9, 10, 8.5, 80, 10);
INSERT INTO NOTAS VALUES ('67890', '3520', 6, 5, 3, 80, 20);
INSERT INTO NOTAS VALUES ('54321', '3520', 6, 5.5, 5, 80, 10);
INSERT INTO NOTAS VALUES ('09876', '3520', 7, 8.5, 6.5, 80, 40);
    
DESC NOTAS;
SELECT * FROM NOTAS;

/*
TERMINAR NA PROXIMA SEMANA
*/