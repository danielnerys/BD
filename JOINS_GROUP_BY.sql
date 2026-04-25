select * from instituicao;

select cursoaluno, count(*) as totaldealunos from alunos group by cursoaluno;


select a.nomealuno, a.cursoaluno, b.nomeinstituicao from alunos a
inner join instituicao b
on a.idinstituicao = b.idinstituicao
ORDER BY NOMEALUNO;


select a.nomeinstituicao, count(b.idaluno) as totalaluno
from instituicao a
join alunos b
on b.idinstituicao = a.idinstituicao
group by a.nomeinstituicao;

-- Exiba quantos alunos em cada curso de cada instituicao
select a.nomeinstituicao, b.cursoaluno, count(*) as total from instituicao a
join alunos b on b.idinstituicao = a.idinstituicao
group by a.nomeinstituicao, b.cursoaluno


