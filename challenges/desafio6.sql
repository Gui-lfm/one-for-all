SELECT 
    MIN(v.price) AS 'faturamento_minimo',
    MAX(v.price) AS 'faturamento_maximo',
    ROUND(AVG(v.price), 2) AS 'faturamento_medio',
    ROUND(SUM(v.price), 2) AS 'faturamento_total'
FROM
    SpotifyClone.user AS u
        JOIN
    SpotifyClone.account_tier AS v ON u.tier_id = v.tier_id
