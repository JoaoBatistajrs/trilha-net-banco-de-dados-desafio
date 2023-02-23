--primeiro
select Nome, Ano from Filmes;

--segundo
select Nome, Ano from Filmes order by ano;

--terceiro
select Nome, Ano, Duracao from Filmes where Nome like '%de volta para o futuro%';

--quarto
select * from Filmes where ano = 1997;

--quinto
select * from Filmes where ano > 2000;

--sexto
select Nome, Ano from Filmes where Duracao > 100 and Duracao < 150 order by Duracao;

--sétimo
select  Ano, COUNT(ano) as Quantidade from Filmes 
group by Ano
order by Quantidade desc

--oitavo
select PrimeiroNome, UltimoNome from Atores where genero = 'M';

--nono
select PrimeiroNome, UltimoNome from Atores where genero = 'F' order by PrimeiroNome;

--decimo
select a.Nome, c.Genero from Filmes a
inner join FilmesGenero b
on a.Id = b.IdFilme
inner join Generos c
on b.IdGenero = c.Id;

--decimo primeiro
select a.Nome, c.Genero from Filmes a
inner join FilmesGenero b
on a.Id = b.IdFilme
inner join Generos c
on b.IdGenero = c.Id
where c.Genero like 'Mistério';

--decimo segundo
select a.Nome, c.PrimeiroNome, c.UltimoNome, b.Papel from Filmes a
inner join ElencoFilme b
on a.Id = b.IdFilme
inner join Atores c
on b.IdAtor = c.Id;