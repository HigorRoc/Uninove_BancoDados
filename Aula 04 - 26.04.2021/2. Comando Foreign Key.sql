/*
CRIANDO A CHAVE ESTRANGEIRA ENTRE FUNCIONARIO E DEPARTAMENTO
*/

CREATE TABLE funcionario (cod_func number(6) PRIMARY KEY,
                        nome_func varchar2(30),
                        endereco varchar2(30),
                        cidade varchar2(15),
                        UF char(2),
                        cep integer, 
                        telefone varchar2(20),
                        salario number(10,2));
                        
CREATE TABLE departamento (id_depart number(6) PRIMARY KEY,
                        nome_depart varchar2(20));
                        
ALTER TABLE funcionario ADD id_depart number(6);

ALTER TABLE funcionario ADD CONSTRAINT id_dep_fk 
                        FOREIGN KEY (id_depart) 
                        REFERENCES departamento (id_depart);

DESC funcionario;
DESC departamento;
