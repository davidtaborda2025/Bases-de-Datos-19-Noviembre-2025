-- ================================
-- INSERTS PARA TODAS LAS TABLAS
-- ================================

-- -------------------------
-- 1) Usuarios (tuser)
-- -------------------------
INSERT INTO tuser (user_name, dob, update_at)
VALUES
  (ROW('Carlos','Gómez'),        '1990-04-12 00:00:00', NOW()),
  (ROW('María','Lozano'),        '1985-11-23 00:00:00', NOW()),
  (ROW('Javier','Paredes'),      '1992-01-08 00:00:00', NOW()),
  (ROW('Luisa','Fernández'),     '1999-06-30 00:00:00', NOW()),
  (ROW('Andrés','Ramírez'),      '2001-09-14 00:00:00', NOW()),
  (ROW('Elena','Torres'),        '1995-03-05 00:00:00', NOW()),
  (ROW('Roberto','Sánchez'),     '1988-12-19 00:00:00', NOW()),
  (ROW('Sofía','Martínez'),      '1997-02-22 00:00:00', NOW()),
  (ROW('Miguel','Castro'),       '1993-07-11 00:00:00', NOW()),
  (ROW('Valeria','Ríos'),        '2000-10-01 00:00:00', NOW());

-- -------------------------
-- 2) Emails (user_email)
-- -------------------------
INSERT INTO user_email (id_user, email)
VALUES
  (1, 'carlos.gomez@example.com'),
  (2, 'maria.lozano@example.com'),
  (3, 'javier.paredes@example.com'),
  (4, 'luisa.fernandez@example.com'),
  (5, 'andres.ramirez@example.com'),
  (6, 'elena.torres@example.com'),
  (7, 'roberto.sanchez@example.com'),
  (8, 'sofia.martinez@example.com'),
  (9, 'miguel.castro@example.com'),
  (10,'valeria.rios@example.com');

-- -------------------------
-- 3) Autores (author)
-- -------------------------
INSERT INTO author (author_name)
VALUES
  (ROW('Gabriel','García Márquez')),
  (ROW('Isabel','Allende')),
  (ROW('Jorge Luis','Borges')),
  (ROW('Julio','Cortázar')),
  (ROW('Mario','Vargas Llosa'));

-- -------------------------
-- 4) Libros (book)
-- -------------------------
INSERT INTO book (name_book, sinopsis, isbn, publish_date, update_at)
VALUES
  ('Cien Años de Soledad', 'Sinopsis del libro 1', 'ISBN0001', '1967-05-30 00:00:00', NOW()),
  ('La Casa de los Espíritus', 'Sinopsis del libro 2', 'ISBN0002', '1982-01-01 00:00:00', NOW()),
  ('El Aleph', 'Sinopsis del libro 3', 'ISBN0003', '1949-01-01 00:00:00', NOW()),
  ('Rayuela', 'Sinopsis del libro 4', 'ISBN0004', '1963-06-01 00:00:00', NOW()),
  ('La Ciudad y los Perros', 'Sinopsis del libro 5', 'ISBN0005', '1963-01-01 00:00:00', NOW()),
  ('El Amor en los Tiempos del Cólera', 'Sinopsis del libro 6', 'ISBN0006', '1985-01-01 00:00:00', NOW()),
  ('Paula', 'Sinopsis del libro 7', 'ISBN0007', '1994-01-01 00:00:00', NOW()),
  ('Ficciones', 'Sinopsis del libro 8', 'ISBN0008', '1944-01-01 00:00:00', NOW()),
  ('Bestiario', 'Sinopsis del libro 9', 'ISBN0009', '1951-01-01 00:00:00', NOW()),
  ('Conversación en la Catedral', 'Sinopsis del libro 10', 'ISBN0010', '1969-01-01 00:00:00', NOW());

-- -------------------------
-- 5) Relación Autor-Libro (author_book)
-- -------------------------
INSERT INTO author_book (id_book, id_author, is_main)
VALUES
  (1, 1, TRUE),
  (2, 2, TRUE),
  (3, 3, TRUE),
  (4, 4, TRUE),
  (5, 5, TRUE),
  (6, 1, TRUE),
  (7, 2, TRUE),
  (8, 3, TRUE),
  (9, 4, TRUE),
  (10,5, TRUE);

-- -------------------------
-- 6) Préstamos (borrow)
-- -------------------------
-- ================================
-- INSERTS PARA TODAS LAS TABLAS
-- ================================

-- -------------------------
-- 1) Usuarios (tuser)
-- -------------------------
INSERT INTO tuser (user_name, dob, update_at)
VALUES
  (ROW('Carlos','Gómez'),        '1990-04-12 00:00:00', NOW()),
  (ROW('María','Lozano'),        '1985-11-23 00:00:00', NOW()),
  (ROW('Javier','Paredes'),      '1992-01-08 00:00:00', NOW()),
  (ROW('Luisa','Fernández'),     '1999-06-30 00:00:00', NOW()),
  (ROW('Andrés','Ramírez'),      '2001-09-14 00:00:00', NOW()),
  (ROW('Elena','Torres'),        '1995-03-05 00:00:00', NOW()),
  (ROW('Roberto','Sánchez'),     '1988-12-19 00:00:00', NOW()),
  (ROW('Sofía','Martínez'),      '1997-02-22 00:00:00', NOW()),
  (ROW('Miguel','Castro'),       '1993-07-11 00:00:00', NOW()),
  (ROW('Valeria','Ríos'),        '2000-10-01 00:00:00', NOW());

-- -------------------------
-- 2) Emails (user_email)
-- -------------------------
INSERT INTO user_email (id_user, email)
VALUES
  (1, 'carlos.gomez@example.com'),
  (2, 'maria.lozano@example.com'),
  (3, 'javier.paredes@example.com'),
  (4, 'luisa.fernandez@example.com'),
  (5, 'andres.ramirez@example.com'),
  (6, 'elena.torres@example.com'),
  (7, 'roberto.sanchez@example.com'),
  (8, 'sofia.martinez@example.com'),
  (9, 'miguel.castro@example.com'),
  (10,'valeria.rios@example.com');

-- -------------------------
-- 3) Autores (author)
-- -------------------------
INSERT INTO author (author_name)
VALUES
  (ROW('Gabriel','García Márquez')),
  (ROW('Isabel','Allende')),
  (ROW('Jorge Luis','Borges')),
  (ROW('Julio','Cortázar')),
  (ROW('Mario','Vargas Llosa'));

-- -------------------------
-- 4) Libros (book)
-- -------------------------
INSERT INTO book (name_book, sinopsis, isbn, publish_date, update_at)
VALUES
  ('Cien Años de Soledad', 'Sinopsis del libro 1', 'ISBN0001', '1967-05-30 00:00:00', NOW()),
  ('La Casa de los Espíritus', 'Sinopsis del libro 2', 'ISBN0002', '1982-01-01 00:00:00', NOW()),
  ('El Aleph', 'Sinopsis del libro 3', 'ISBN0003', '1949-01-01 00:00:00', NOW()),
  ('Rayuela', 'Sinopsis del libro 4', 'ISBN0004', '1963-06-01 00:00:00', NOW()),
  ('La Ciudad y los Perros', 'Sinopsis del libro 5', 'ISBN0005', '1963-01-01 00:00:00', NOW()),
  ('El Amor en los Tiempos del Cólera', 'Sinopsis del libro 6', 'ISBN0006', '1985-01-01 00:00:00', NOW()),
  ('Paula', 'Sinopsis del libro 7', 'ISBN0007', '1994-01-01 00:00:00', NOW()),
  ('Ficciones', 'Sinopsis del libro 8', 'ISBN0008', '1944-01-01 00:00:00', NOW()),
  ('Bestiario', 'Sinopsis del libro 9', 'ISBN0009', '1951-01-01 00:00:00', NOW()),
  ('Conversación en la Catedral', 'Sinopsis del libro 10', 'ISBN0010', '1969-01-01 00:00:00', NOW());

-- -------------------------
-- 5) Relación Autor-Libro (author_book)
-- -------------------------
INSERT INTO author_book (id_book, id_author, is_main)
VALUES
  (1, 1, TRUE),
  (2, 2, TRUE),
  (3, 3, TRUE),
  (4, 4, TRUE),
  (5, 5, TRUE),
  (6, 1, TRUE),
  (7, 2, TRUE),
  (8, 3, TRUE),
  (9, 4, TRUE),
  (10,5, TRUE);

-- -------------------------
-- 6) Préstamos (borrow)
-- -------------------------
INSERT INTO borrow (id_book, id_user, borrow_date, due_date, b_status)
VALUES
  (1, 1, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
  (2, 2, NOW(), NOW() + INTERVAL '15 days', 'returned'),
  (3, 3, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
  (4, 4, NOW(), NOW() + INTERVAL '15 days', 'overdue'),
  (5, 5, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
  (6, 6, NOW(), NOW() + INTERVAL '15 days', 'returned'),
  (7, 7, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
  (8, 8, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
  (9, 9, NOW(), NOW() + INTERVAL '15 days', 'returned'),
  (10,10, NOW(), NOW() + INTERVAL '15 days', 'borrowed');

INSERT INTO borrow (id_book, id_user, borrow_date, due_date, b_status)
VALUES
  (3, 1, NOW() - INTERVAL '20 days', NOW() - INTERVAL '5 days', 'overdue'),
  (7, 4, NOW() - INTERVAL '10 days', NOW() + INTERVAL '5 days', 'borrowed'),
  (1, 6, NOW() - INTERVAL '30 days', NOW() - INTERVAL '15 days', 'returned'),
  (9, 2, NOW() - INTERVAL '2 days', NOW() + INTERVAL '13 days', 'borrowed'),
  (5, 8, NOW() - INTERVAL '7 days', NOW() + INTERVAL '8 days', 'borrowed'),
  (10, 3, NOW() - INTERVAL '25 days', NOW() - INTERVAL '10 days', 'returned'),
  (2, 9, NOW() - INTERVAL '5 days', NOW() + INTERVAL '10 days', 'borrowed'),
  (4, 7, NOW() - INTERVAL '18 days', NOW() - INTERVAL '3 days', 'overdue'),
  (6, 10, NOW() - INTERVAL '12 days', NOW() + INTERVAL '3 days', 'borrowed'),
  (8, 5, NOW() - INTERVAL '1 day', NOW() + INTERVAL '14 days', 'borrowed');