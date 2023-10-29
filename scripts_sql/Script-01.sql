--Mostra o número total de Hotéis.

SELECT COUNT(*) AS Total_Hoteis FROM minha_base_de_dados.hoteis h;

--Mostra as notas dos hotéis e a quantidade de hotéis com uma mesma nota.

SELECT 
    Rating, 
    COUNT(*) AS Número_Hotéis 
FROM minha_base_de_dados.hoteis h
GROUP BY Rating 
ORDER BY Rating DESC;

-- Média de preço dos hotéis arredondada.

SELECT ROUND(AVG(Price)) AS Média_Preço FROM minha_base_de_dados.hoteis h;


-- Distância do marco Landmark até o marco 'centro da cidade'
-- Para números inteiros: metros
-- Para números quebrados: Kilômetros

SELECT 
    Hotel_Name, 
    Distance_to_Landmark 
FROM minha_base_de_dados.hoteis h
WHERE Nearest_Landmark = 'city centre' 
ORDER BY Distance_to_Landmark ASC;

