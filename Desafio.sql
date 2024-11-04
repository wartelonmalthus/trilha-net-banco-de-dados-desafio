
--1 - Buscar o nome e ano dos filmes

SELECT 
       [Nome]
      ,[Ano]
  FROM [Filmes].[dbo].[Filmes]


  --2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
  SELECT 
       [Nome]
      ,[Ano]
  FROM [Filmes].[dbo].[Filmes] order by [Ano] asc  

 -- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

 SELECT
       [Nome]
      ,[Ano]
      ,[Duracao]
  FROM [Filmes].[dbo].[Filmes] where [Nome] = 'De volta para o futuro'

 -- 4 - Buscar os filmes lançados em 1997

 SELECT
       [Nome]
      ,[Ano]
      ,[Duracao]
  FROM [Filmes].[dbo].[Filmes] where [Ano] = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000

SELECT
       [Nome]
      ,[Ano]
      ,[Duracao]
  FROM [Filmes].[dbo].[Filmes] where [Ano] > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
       [Nome]
      ,[Ano]
      ,[Duracao]
  FROM [Filmes].[dbo].[Filmes] where [Duracao] > 100 AND [Duracao] < 150  order by [Duracao] asc

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

SELECT 
    [Ano],
    COUNT([Nome]) AS QuantidadeFilmes
FROM 
    [Filmes].[dbo].[Filmes]
GROUP BY 
    [Ano]
ORDER BY 
    [Ano] ASC;

