create table instituicao (idinstituicao int not null auto_increment, nomeinstituicao varchar(50) not null, enderecoinstituicao varchar(100) not null, 
telefoneinstituicao varchar(11) not null, primary key (idinstituicao));


create table aluno (idaluno int not null auto_increment, matriculaaluno varchar(5), nomealuno varchar(50) not null,
 cursoaluno varchar(20) not null, primary key (idaluno), idinstituicao int not null, constraint FK_idinstituicao foreign key(idinstituicao) references instituicao(idinstituicao)); 
 
 drop table instituicao;
 
insert into instituicao(nomeinstituicao, enderecoinstituicao, telefoneinstituicao)
 values ('senai', 'Rua Niteroi - 180 - São Caetano do Sul', '4220-3333'), ('ETEC', 'Rua SAO PAULO - 999 - São Caetano do Sul', '4220-5554');
 
insert into aluno (matriculaaluno, nomealuno, cursoaluno, idinstituicao) values ("22559", "Lucas Silva", "Frontend", 1),
("22560", "Mariana Costa", "Backend", 2),
("22561", "Pedro Almeida", "DevOps", 1),
("22562", "Juliana Rocha", "Data Science", 2),
("22563", "Rafael Souza", "Mobile", 1),
("22564", "Camila Ferreira", "Frontend", 2),
("22565", "Bruno Martins", "Backend", 1),
("22566", "Aline Gomes", "DevOps", 2),
("22567", "Thiago Ribeiro", "Data Science", 1),
("22568", "Fernanda Alves", "Mobile", 2),
("22569", "Diego Carvalho", "Frontend", 1),
("22570", "Patricia Lima", "Backend", 2),
("22571", "Gustavo Pereira", "DevOps", 1),
("22572", "Larissa Teixeira", "Data Science", 2),
("22573", "Eduardo Barros", "Mobile", 1),
("22574", "Renata Correia", "Frontend", 2),
("22575", "Felipe Castro", "Backend", 1),
("22576", "Vanessa Duarte", "DevOps", 2),
("22577", "André Melo", "Data Science", 1),
("22578", "Carla Nascimento", "Mobile", 2),
("22579", "Rodrigo Araujo", "Frontend", 1),
("22580", "Beatriz Farias", "Backend", 2),
("22581", "Leonardo Freitas", "DevOps", 1),
("22582", "Tatiane Lopes", "Data Science", 2),
("22583", "Marcelo Pinto", "Mobile", 1),
("22584", "Paula Batista", "Frontend", 2),
("22585", "Vinicius Moreira", "Backend", 1),
("22586", "Simone Cardoso", "DevOps", 2),
("22587", "Ricardo Monteiro", "Data Science", 1),
("22588", "Débora Neves", "Mobile", 2),
("22589", "Caio Moura", "Frontend", 1),
("22590", "Elaine Cunha", "Backend", 2),
("22591", "Hugo Pacheco", "DevOps", 1),
("22592", "Michele Braga", "Data Science", 2),
("22593", "Danilo Rezende", "Mobile", 1),
("22594", "Sandra Rios", "Frontend", 2),
("22595", "Otavio Coelho", "Backend", 1),
("22596", "Cristiane Mota", "DevOps", 2),
("22597", "Paulo Sergio", "Data Science", 1),
("22598", "Luciana Vidal", "Mobile", 2),
("22599", "Igor Tavares", "Frontend", 1),
("22600", "Adriana Queiroz", "Backend", 2),
("22601", "Renan Guedes", "DevOps", 1),
("22602", "Priscila Matos", "Data Science", 2),
("22603", "Alexandre Borges", "Mobile", 1),
("22604", "Monica Peixoto", "Frontend", 2),
("22605", "Douglas Antunes", "Backend", 1),
("22606", "Fabiana Sales", "DevOps", 2),
("22607", "Cesar Campos", "Data Science", 1),
("22608", "Roberta Diniz", "Mobile", 2);

UPDATE alunos set nomealuno = "Daniel Nery Silva de Oliveira" where idaluno = 1;
update instituicao set nomeinstituicao = "ETEC" WHERE IDINSTITUICAO = 2
select *,(case
	when idinstituicao = 1 then "Senai"
    when idinstituicao = 2 then "ETEC"
    end) from alunos;
    
select a.nomealuno, a.cursoaluno, b.nomeinstituicao from alunos a
inner join instituicao b
on a.idinstituicao = b.idinstituicao
ORDER BY NOMEALUNO

