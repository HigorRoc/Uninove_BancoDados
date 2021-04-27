/*
INSERINDO DADOS NA TABELA DEPARTAMENTO
*/

/*Inserindo os dados*/
INSERT INTO departamento (id_depart, nome_depart) 
            VALUES ('1', 'tecnologia');

/*Atualizando os dados*/
UPDATE departamento SET nome_depart = 'ti'
                        WHERE nome_depart = 'tecnologia';

/*Exibindo os dados*/  
SELECT * FROM departamento;
