-- ============================================================
-- 1. TYPE fullname
-- ============================================================

-- (Asumimos que el TYPE ya existe según tu definición original)


-- ============================================================
-- 2. Tabla tuser – 10 registros
-- ============================================================

INSERT INTO tuser (username, dob, update_at)
VALUES 
    (ROW('Carlos','Gómez'), '1990-05-14', NOW()),
    (ROW('María','Fernández'), '1988-11-22', NOW()),
    (ROW('Luis','Paredes'), '1995-03-10', NOW()),
    (ROW('Ana','López'), '1992-07-18', NOW()),
    (ROW('Pedro','Ramírez'), '1985-01-30', NOW()),
    (ROW('Lucía','Mendoza'), '1998-09-02', NOW()),
    (ROW('Jorge','Castro'), '1991-04-25', NOW()),
    (ROW('Elena','Salazar'), '1993-12-17', NOW()),
    (ROW('Roberto','Santos'), '1989-06-21', NOW()),
    (ROW('Daniela','Rojas'), '1996-08-09', NOW());


-- ============================================================
-- 3. Tabla user_email – 10 registros
-- ============================================================

INSERT INTO user_email(id_user, email) VALUES
    (1, 'carlos.gomez@example.com'),
    (2, 'maria.fernandez@example.com'),
    (3, 'luis.paredes@example.com'),
    (4, 'ana.lopez@example.com'),
    (5, 'pedro.ramirez@example.com'),
    (6, 'lucia.mendoza@example.com'),
    (7, 'jorge.castro@example.com'),
    (8, 'elena.salazar@example.com'),
    (9, 'roberto.santos@example.com'),
    (10,'daniela.rojas@example.com');


-- ============================================================
-- 4. Tabla author – 10 registros
-- ============================================================

INSERT INTO author(author_name) VALUES
    (ROW('Gabriel','Torres')),
    (ROW('Laura','Martínez')),
    (ROW('Andrés','Silva')),
    (ROW('Patricia','Vera')),
    (ROW('Felipe','Soto')),
    (ROW('Romina','Carrasco')),
    (ROW('Esteban','Rivas')),
    (ROW('Carolina','Fuentes')),
    (ROW('Diego','Araya')),
    (ROW('Sofía','Pino'));


-- ============================================================
-- 5. Tabla book – 10 registros
-- ============================================================

INSERT INTO book(name_book, sinopsis, isbn, update_at)
VALUES
    ('El Bosque Perdido', 'Una aventura fantástica entre criaturas ancestrales.', 'ISBN-001', NOW()),
    ('Caminos de Fuego', 'Una historia épica de guerra y honor.', 'ISBN-002', NOW()),
    ('Sombras del Pasado', 'Un misterio oscuro por resolver.', 'ISBN-003', NOW()),
    ('Luz en la Tormenta', 'Una novela romántica ambientada en una isla.', 'ISBN-004', NOW()),
    ('Ecos del Futuro', 'Ciencia ficción sobre viajes temporales.', 'ISBN-005', NOW()),
    ('Mar Profundo', 'Un thriller en las profundidades del océano.', 'ISBN-006', NOW()),
    ('La Última Frontera', 'Colonización espacial al límite.', 'ISBN-007', NOW()),
    ('Cantos de Arena', 'Relato histórico en el desierto.', 'ISBN-008', NOW()),
    ('El Guardián Oculto', 'Una conspiración internacional.', 'ISBN-009', NOW()),
    ('Espíritu Salvaje', 'Conexión humana con la naturaleza.', 'ISBN-010', NOW());


-- ============================================================
-- 6. Tabla author_book – 10 relaciones (1 por libro)
-- ============================================================

INSERT INTO author_book(id_book, id_author, is_main)
VALUES
    (1, 1, TRUE),
    (2, 2, TRUE),
    (3, 3, TRUE),
    (4, 4, TRUE),
    (5, 5, TRUE),
    (6, 6, TRUE),
    (7, 7, TRUE),
    (8, 8, TRUE),
    (9, 9, TRUE),
    (10,10, TRUE);


-- ============================================================
-- 7. Tabla borrow – 10 registros
-- ============================================================

INSERT INTO borrow(id_book, id_user, borrow_date, due_date, b_status)
VALUES
    (1, 1, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
    (2, 2, NOW(), NOW() + INTERVAL '15 days', 'returned'),
    (3, 3, NOW(), NOW() + INTERVAL '15 days', 'overdue'),
    (4, 4, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
    (5, 5, NOW(), NOW() + INTERVAL '15 days', 'returned'),
    (6, 6, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
    (7, 7, NOW(), NOW() + INTERVAL '15 days', 'overdue'),
    (8, 8, NOW(), NOW() + INTERVAL '15 days', 'borrowed'),
    (9, 9, NOW(), NOW() + INTERVAL '15 days', 'returned'),
    (10,10, NOW(), NOW() + INTERVAL '15 days', 'borrowed');
