CREATE VIEW rock AS
SELECT *
FROM track
WHERE genre_id IN (
  SELECT genre_id
  FROM genre
  WHERE name = 'Rock'
);

CREATE VIEW classical_count AS
SELECT COUNT(*)
FROM track
JOIN playlist_track ON playlist_track.track_id = track.track_id
JOIN playlist ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Classical';

