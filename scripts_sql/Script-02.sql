-- Mostra a nota mínima, máxima e uma média do total das notas.

SELECT 
    ROUND(AVG(Rating), 2) AS Média_Rating, 
    MIN(Rating) AS Mínimo_Rating, 
    MAX(Rating) AS Máximo_Rating 
FROM minha_base_de_dados.hoteis h;

-- Mostra uma avaliação média por estrela

SELECT 
    Star_Rating, 
    ROUND(AVG(Rating), 2) AS Media_Rating 
FROM minha_base_de_dados.hoteis h
GROUP BY Star_Rating 
ORDER BY Star_Rating;

--Mostra os 5 Hotéis em Munnar com as maiores Reviews.

SELECT 
    H.Hotel_Name, 
    H.Reviews
FROM minha_base_de_dados.hoteis h
JOIN (
    SELECT 
        DISTINCT Reviews
    FROM minha_base_de_dados.hoteis h2 
    ORDER BY Reviews DESC
    LIMIT 5
) top_reviews
ON H.Reviews = top_reviews.Reviews
ORDER BY H.Reviews DESC;
