-- List the 10 artists mostly listed in all playlists
SELECT artists.name, COUNT(artists.name)
FROM artists
JOIN albums ON albums.artist_id = artists.id
JOIN tracks ON tracks.album_id = albums.id
JOIN playlist_tracks ON playlist_tracks.track_id = tracks.id
JOIN playlists ON playlist_tracks.playlist_id = playlists.id
GROUP BY artists.name
ORDER BY COUNT(artists.name) DESC
LIMIT 10
