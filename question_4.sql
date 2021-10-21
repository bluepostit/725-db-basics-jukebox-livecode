-- List the tracks which have been purchased at least twice,
-- ordered by number of purchases

SELECT tracks.name, tracks.composer, COUNT(*) AS c
FROM tracks
JOIN invoice_lines ON tracks.id = invoice_lines.track_id
GROUP BY invoice_lines.track_id
HAVING c >= 2
ORDER BY c DESC
