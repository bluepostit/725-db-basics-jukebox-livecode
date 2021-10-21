-- List tracks (Name + Composer) of the Classical playlist
SELECT tracks.name, composer
FROM tracks
JOIN playlist_tracks
ON playlist_tracks.track_id = tracks.id
JOIN playlists
ON playlist_tracks.playlist_id = playlists.id
WHERE playlists.name = 'Classical'
