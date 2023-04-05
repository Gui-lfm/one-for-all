SELECT COUNT(qtd.played_at) AS 'musicas_no_historico'
FROM SpotifyClone.history AS qtd
WHERE qtd.user_id = 1;