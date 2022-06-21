-- Easy: Create a table with your top five favorite books with Title, Publish Date, and 
-- author First/Last Name Create a query to add in two new books Remove the oldest book.
-- Provide an additional query giving the sum of all books


USE MyGI;
CREATE TABLE fave_books(
book TEXT,
published date,
firstname TEXT,
lastname TEXT
);

INSERT INTO fave_books (book, published, firstname, lastname)
VALUES
('The Lifechanging Magic of Tidying Up', '2010-12-27', 'Marie', 'Kondo'),
('Sideways Stories From Wayside School', '1978-01-01', 'Louis', 'Sachar'),
('The Virgin Suicides', '1993-04-01', 'Jeffrey', 'Eugenides'),
('I Thought It Was Just Me', '2007-02-01', 'Brene', 'Brown'),
('Adult Children of Emotionally Immature Parents', '2015-06-01', 'Lindsay', 'Gibson');

SELECT * FROM fave_books;
INSERT INTO fave_books(book, published, firstname, lastname)
VALUES('Salt, Fat, Acid, Heat', '2017-04-25', 'Samin', 'Nosrat'),
('My Little Red Book', '2009-02-26', 'Rachel', 'Nalebuff');

SELECT * FROM fave_books
ORDER BY published;

DELETE FROM fave_books
ORDER BY published
LIMIT 1;

SELECT * FROM fave_books;

