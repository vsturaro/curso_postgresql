CREATE TABLE IF NOT EXISTS teste (
id seral primary key,
nome varchar (50) not null,
created_at timestamp not null default current_timestamp
); /* criando tabela teste*/

drop table if exists teste; /*limpando tabela*/

CREATE TABLE IF NOT EXISTS teste (
	cpf varchar (11) not null,
	nome varchar (50) not null,
	created_at timestamp not null default current_timestamp,
	primary key(cpf)
);

insert into teste (cpf, nome, created_at) /*inserindo valores*/
values ('90707559120', 'Vander', '2020-10-23 21:34:00');

insert into teste (cpf, nome, created_at)
values ('90707559120', 'Vander', '2020-10-23 21:34:00') on conflict (cpf) do nothing; /* insere valor se não houver no banco, se ouver não insere e não retorna erro ao usuário*/

update teste set nome='Vandercleison Sturaro' where cpf='90707559120';

select * from teste;
