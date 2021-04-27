/*Criação de Tabela*/
CREATE TABLE cliente (cod_cliente number,
                    nome_cliente varchar2(30),
                    endereco varchar2(30),
                    cidade varchar2(15),
                    cep varchar2(9),
                    UF char(2));

/*Apagandoo a Tabela*/
DROP TABLE cliente;

/*Alterando a Tabela (no caso a PK)*/
ALTER TABLE cliente ADD constraint cod_cli_pk PRIMARY KEY (cod_cliente);

/*Apagando uma Coluna*/
ALTER TABLE cliente DROP COLUMN cep;

/*Apagando PK da tabela*/
ALTER TABLE cliente DROP CONSTRAINT cod_cli_pk;

/*Visualizar a Estrutura da Tabela*/
DESC cliente;


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

/*
INSERINDO DADOS NA TABELA DEPARTAMENTO
*/

INSERT INTO departamento (id_depart, nome_depart) 
            VALUES ('1', 'tecnologia');
            
UPDATE departamento SET nome_depart = 'ti'
                        WHERE nome_depart = 'tecnologia';
                        
SELECT * FROM departamento;
