SELECT 
	u.username AS 'pessoa_usuaria',
    IF(MAX(YEAR(s.played_at)) < 2021, 'Inativa', 'Ativa') AS 'status_pessoa_usuaria'
FROM SpotifyClone.user AS u
	JOIN
	SpotifyClone.history as s ON u.user_id = s.user_id
GROUP BY u.user_id
ORDER BY username;