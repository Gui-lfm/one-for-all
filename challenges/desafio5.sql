SELECT 
    m.music_name AS 'cancao', COUNT(n.music_id) AS 'reproducoes'
FROM
    SpotifyClone.music AS m
        JOIN
    SpotifyClone.history AS n ON m.music_id = n.music_id
GROUP BY m.music_id
ORDER BY COUNT(n.music_id) DESC , m.music_name
LIMIT 2;