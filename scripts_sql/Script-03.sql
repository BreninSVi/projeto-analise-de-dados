--Mostra a correlação preço e taxa.

SELECT 
    (
        COUNT(*) * SUM(Price * Tax) - SUM(Price) * SUM(Tax)
    ) / 
    SQRT(
        (COUNT(*) * SUM(Price * Price) - SUM(Price) * SUM(Price)) *
        (COUNT(*) * SUM(Tax * Tax) - SUM(Tax) * SUM(Tax))
    ) AS Correlacao_Preco_Taxa
FROM minha_base_de_dados.hoteis h;

--Levantamento de dados sobre média e mediana de preço e média e media de taxa.

SELECT
    ROUND(AVG(Price), 3) AS Media_Preco,
    ROUND((MAX(Price) + MIN(Price)) / 2, 3) AS Mediana_Preco,
    ROUND(AVG(Tax), 3) AS Media_Taxa,
    ROUND((MAX(Tax) + MIN(Tax)) / 2, 3) AS Mediana_Taxa
FROM minha_base_de_dados.hoteis h;


SELECT 
    (SELECT COUNT(*) FROM minha_base_de_dados.hoteis h) AS Total_Hoteis,
    (SELECT COUNT(*) FROM minha_base_de_dados.hoteis h2 WHERE Star_Rating = 5) AS Total_Hoteis_Com_Star_Rating_5;