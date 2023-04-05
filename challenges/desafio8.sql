SELECT 
	a.artist_name AS 'artista', 
    al.title AS 'album'
FROM
	SpotifyClone.artist AS a
    JOIN
    SpotifyClone.album as al ON a.artist_id = al.artist_id
WHERE
	a.artist_name = 'Elis Regina'
ORDER BY al.title;