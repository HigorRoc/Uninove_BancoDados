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
