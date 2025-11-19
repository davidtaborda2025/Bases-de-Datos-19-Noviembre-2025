-- Listado de libros que han sido prestados por el usuario con id = 3.
SELECT bo.* FROM book bo
JOIN borrow br ON bo.id_book = br.id_book
WHERE br.id_user = 3; 

-- Qué libros ha prestado el usuario María Lozano.
SELECT bo.* FROM book bo
JOIN borrow br ON bo.id_book = br.id_book
JOIN tuser tu ON br.id_user = tu.id_user
WHERE tu.user_name.first_name = 'María' AND tu.user_name.last_name = 'Lozano';  

-- Cuál fue el último usuario en prestar el libro 'Rayuela'.
SELECT tu.* FROM tuser tu
JOIN borrow br ON tu.id_user = br.id_user
JOIN book bo ON bo.id_book = br.id_book
WHERE bo.name_book = 'Rayuela'
ORDER BY br.borrow_date DESC
LIMIT 1;

-- Qué libros deben ser entregados entre el 3 y el 10 de Diciembre.
SELECT bo.* FROM book bo
JOIN borrow br ON br.id_book = bo.id_book
WHERE br.due_date BETWEEN '2025-12-03' AND '2025-12-10';