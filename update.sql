UPDATE customer
SET fax = NULL;

UPDATE customer
SET company = 'self'
WHERE company = NULL;

UPDATE customer
SET last_name = 'Thompson'
WHERE customer_id = 28;

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

UPDATE track
SET composer = 'the darkness around us'
WHERE genre_id = ( 
    SELECT genre_id 
    FROM genre 
    WHERE name = 'Metal' )
    AND composer IS null;