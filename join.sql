SELECT * FROM invoice
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE invoice_line.unit_price > 0.99;

SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
FROM invoice
JOIN customer ON customer.customer_id = invoice.customer_id;

SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name
FROM customer
JOIN employee ON customer.support_rep_id = employee.employee_id;

SELECT album.title, artist.name
FROM album
JOIN artist ON album.artist_id = artist.artist_id;

SELECT playlist_track.track_id, playlist.name
FROM playlist_track
JOIN playlist ON playlist.playlist_id = playlist_track.playlist_id
WHERE playlist.name = 'Music';

SELECT track.name, playlist_track.playlist_id
FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id;

SELECT track.name track, playlist.name playlist
FROM track
JOIN playlist_track ON track.track_id = playlist_track.track_id
JOIN playlist ON playlist_track.playlist_id = playlist.playlist_id;

SELECT track.name, album.title
FROM track
JOIN genre ON genre.genre_id = track.genre_id
JOIN album ON album.album_id = track.album_id
WHERE genre.name = 'Alternative & Punk';
