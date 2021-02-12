INSERT INTO series (title, author_id, subgenre_id) 
VALUES ("A Song of Ice and Fire", 1, 1), ("A Song of Ice and Fire", 1, 1);

INSERT INTO books (title, year, series_id) 
VALUES ("medieval", '2/11/21', 1),("medieval", '2/11/21', 1),("medieval", '2/11/21', 1),("medieval", '2/11/21', 1),("medieval", '2/11/21', 1),("medieval", '2/11/21', 1);

INSERT INTO characters (name, motto, species, author_id) 
VALUES ("George R. R. Martin", 2, "Second Author", 1),("George R. R. Martin", 2, "Second Author", 1),("George R. R. Martin", 2, "Second Author", 1),("George R. R. Martin", 2, "Second Author", 1),
("George R. R. Martin", 2, "Second Author", 1),("George R. R. Martin", 2, "Second Author", 1),("George R. R. Martin", 2, "Second Author", 1),("George R. R. Martin", 2, "Second Author", 1);

INSERT INTO subgenres (name) 
VALUES ("medieval"), ("space opera");

INSERT INTO authors (name) 
VALUES ("medieval"), ("space opera");

INSERT INTO character_books (book_id, character_id) 
VALUES (1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1),(1, 1);
