create database bd_empresa;

use bd_empresa;

create table departamento(
	cd_dpto int(10) auto_increment not null primary key,
    nome_dpto varchar(255) not null,
    cdgerente_dpto int(10)
);

create table funcionario(
cd_func int(10) auto_increment not null primary key,
nome_func varchar(255) not null,
sobrenome_func varchar(255) not null,
ano_nasc int(5) not null,
cargo varchar(30) not null,
salario int(30) not null,
cd_dpto int(10) not null,
foreign key (cd_dpto) references departamento(cd_dpto)
);

/*PRIMEIRO*/
SELECT nome_func AS nome, sobrenome_func AS sobrenome FROM funcionario ORDER BY nome_func;

/*SENGUNDO*/
SELECT * FROM funcionario ORDER BY sobrenome_func;

/*TERCEIRO*/
SELECT * FROM funcionario WHERE salario > 2500 ORDER BY nome_func AND sobrenome_func;

/*QUARTO*/
SELECT nome_func AS nome, ano_nasc AS data_nascimento 
FROM funcionario ORDER BY data_nascimento ASC; 

/*QUINTO*/
SELECT SUM(salario) AS pagamento_total FROM funcionario; 

/*SEXTO*/
SELECT F.nome_func AS nome , D.nome_dpto AS departamento,F.cargo AS funcao 
FROM funcionario AS F NATURAL JOIN departamento AS D
ORDER BY nome;

/*SETIMO*/
SELECT F.nome_func AS nome , D.nome_dpto AS departamento,F.cargo AS funcao, F.salario
FROM funcionario AS F NATURAL JOIN departamento AS D
WHERE F.salario < (SELECT AVG(salario) FROM funcionario);

/*OITAVO*/


/*NONO*/
SELECT D.nome_dpto AS departamento, F.nome_func AS nome 
FROM departamento AS D natural join funcionario AS F
WHERE cargo = "gerente"
ORDER BY nome; 

/*DECIMO*/
SELECT F.nome_func FROM funcionario AS F
WHERE cd_dpto in (SELECT D.cd_dpto FROM departamento AS D WHERE cd_dpto = 11);

/*DECIMO PRIMEIRO*/ 
SELECT F.nome_func AS nome, D.nome_dpto AS departamento
FROM departamento AS D natural join funcionario AS F
WHERE salario <= (SELECT min(salario) from funcionario); 