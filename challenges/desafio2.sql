SELECT 
    COUNT(DISTINCT m.music_name) AS 'cancoes',
    COUNT(DISTINCT an.artist_name) AS 'artistas',
    COUNT(DISTINCT a.title) AS 'albuns'
FROM
    SpotifyClone.music AS m
        JOIN
    SpotifyClone.album AS a ON m.album_id = a.album_id
        JOIN
    SpotifyClone.artist AS an ON an.artist_id = a.artist_id;