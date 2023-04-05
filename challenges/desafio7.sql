SELECT 
    a.artist_name AS 'artista',
    al.title AS 'album',
    COUNT(f.user_id) AS 'pessoas_seguidoras'
FROM
    SpotifyClone.artist AS a
        JOIN
    SpotifyClone.following_artists AS f ON a.artist_id = f.artist_id
        JOIN
    SpotifyClone.album AS al ON al.artist_id = f.artist_id
GROUP BY a.artist_name , al.title
ORDER BY COUNT(f.user_id) DESC, a.artist_name , al.title
