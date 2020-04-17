use Empresa01;

create table tb_funcionario (
cd_funcionario int not null auto_increment , 
nm_funcionario varchar(45)not null ,
cpf_funcionario varchar(11)not null ,
nro_dpto varchar(10)not null ,
tel_funcionario varchar(11)not null ,
salario decimal not null ,
cd_supervisor varchar(45)null ,
primary key (cd_funcionario));

show tables;

select * from Empresa01.tb_funcionario;

insert into tb_funcionario(cd_funcionario, nm_funcionario, cpf_funcionario, nro_dpto, tel_funcionario, salario, cd_supervisor)
values (10, "Fernando", "30304455667", "1", "1399995566", 1500, "11");

insert into tb_funcionario(nm_funcionario, cpf_funcionario, nro_dpto, tel_funcionario, salario, cd_supervisor)
values ("Brenda", "40401122337", "2", "1398878922", 1800, "14");

insert into tb_funcionario(nm_funcionario, cpf_funcionario, nro_dpto, tel_funcionario, salario, cd_supervisor)
values ("Luiz", "20203344995", "1", "1388379494", 1500, "11");

insert into tb_funcionario(nm_funcionario, cpf_funcionario, nro_dpto, tel_funcionario, salario, cd_supervisor)
values ("Ana", "10103993884", "2", "1344567786", 1800, "14");

insert into tb_funcionario(nm_funcionario, cpf_funcionario, nro_dpto, tel_funcionario, salario)
values ("Rui", "20209384990", "2", "1388989047", 3000);





