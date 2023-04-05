SELECT 
    u.username AS 'pessoa_usuária',
    COUNT(m.music_id) AS 'musicas_ouvidas',
    ROUND(SUM(min.length_seconds) / 60, 2) AS 'total_minutos'
FROM
    SpotifyClone.user AS u
        JOIN
    SpotifyClone.history AS m ON u.user_id = m.user_id
        JOIN
    SpotifyClone.music AS min ON m.music_id = min.music_id
GROUP BY u.user_id
ORDER BY u.username;
