-- Tipo de dato compuesto.
-- first_name  -> nombres.
-- last_name  -> apellidos.
CREATE TYPE fullname AS (
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Tabla tuser.
-- Representa a los usuarios.
CREATE TABLE tuser(
    id_user SERIAL PRIMARY KEY,
    username fullname NOT NULL,
    dob TIMESTAMP NOT NULL,
    create_at TIMESTAMP NOT NULL DEFAULT NOW(),
    update_at TIMESTAMP NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE
);

-- Tabla user_email.
-- Contiene los emails de los usuarios.
CREATE TABLE user_email(
    id_user_email SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES tuser(id_user) ON DELETE CASCADE,
    email VARCHAR(100) NOT NULL,
    UNIQUE(id_user, email)
);

-- Tabla author.
-- Representa a los autores de los libros.
CREATE TABLE author(
    id_author SERIAL PRIMARY KEY,
    author_name fullname NOT NULL
);

-- Tabla book.
-- Representa a los libros.
CREATE TABLE book(
    id_book SERIAL PRIMARY KEY,
    name_book VARCHAR(50) NOT NULL,
    sinopsis TEXT NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    publish_date TIMESTAMP NOT NULL DEFAULT NOW(),
    create_at TIMESTAMP NOT NULL DEFAULT NOW(),
    update_at TIMESTAMP NOT NULL,
    available BOOLEAN NOT NULL DEFAULT TRUE
);

-- Tabla author_book.
-- Representa a la relación de muchos a muchos (N:M) entre los autores y los libros.
CREATE TABLE author_book(
    id_book INT NOT NULL REFERENCES book(id_book) ON DELETE RESTRICT,
    id_author INT NOT NULL REFERENCES author(id_author) ON DELETE RESTRICT,
    is_main BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY(id_book, id_author)
);

-- Tipo de dato definido por el usuario.
-- Contiene los estados en los que está cada préstamo.
CREATE TYPE borrow_status AS ENUM('borrowed', 'returned', 'overdue');

-- Tabla borrow.
-- Representa cada préstamo realizado.
CREATE TABLE borrow(
    id_borrow SERIAL PRIMARY KEY,
    id_book INT NOT NULL REFERENCES book(id_book) ON DELETE RESTRICT,
    id_user INT NOT NULL REFERENCES tuser(id_user) ON DELETE RESTRICT,
    borrow_date TIMESTAMP NOT NULL DEFAULT NOW(),
    due_date TIMESTAMP NOT NULL DEFAULT NOW() + INTERVAL '15 days',
    b_status borrow_status NOT NULL  DEFAULT 'borrowed'
);