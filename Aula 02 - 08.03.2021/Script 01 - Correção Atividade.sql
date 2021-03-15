//01
update gerente set NOME = 'João' where CPF = 11;

//02
insert into desconto values (5, 'ISS');

//03
update desconto set COD = 9 where SIGLA = 'ISS';

//04
update empregado set NOME = 'EMP';

//05
update empregado set COD = 'G', NOME = 'GerenteA' where MAT = 60;

//06
update tem set VALOR = VALOR + 100 where COD = 1;

//07
delete from tem;

//08
delete from desconto where COD <= 2;

//09, 10, 11
select NOME from funcionario;
select NOME, SALARIO from funcionario;
select MAT, NOME, SALARIO, DESCONTO from funcionario;

//12, 13, 14
select NOME, SALARIO from funcionario where SALARIO > 2000 and SALARIO < 4000;
select NOME, SALARIO, DESCONTO from funcionario where DESCONTO < 200.00 or SALARIO >= 3000;
select NOME, SALARIO, DESCONTO from funcionario where SALARIO - DESCONTO > 3000.00;

//15, 16 ,17 ,18
select MAX(SALARIO) from funcionario;
select MIN(SALARIO) from funcionario;
select AVG(SALARIO) from funcionario;
select SUM(SALARIO) from funcionario;

//19, 20
select SUM(SALARIO) / COUNT(*) as MediaSal from funcionario;
select SUM(SALARIO) * 13 from funcionario;

//21
select MAX(SALARIO - DESCONTO) as MaiSal,
       MIN(SALARIO - DESCONTO) as MenSal,
       SUM(SALARIO - DESCONTO) as SomSal,
       AVG(SALARIO - DESCONTO) as MedSal,
       COUNT(*) as Qtd
from funcionario;

//22
select MAX(SALARIO - DESCONTO) as MaiSal,
       MIN(SALARIO - DESCONTO) as MenSal,
       SUM(SALARIO - DESCONTO) as SomSal,
       ROUND(AVG(SALARIO - DESCONTO),2) as MedSal,
       COUNT(*) as Qtd
from funcionario where SALARIO - DESCONTO >= 2000.00;
