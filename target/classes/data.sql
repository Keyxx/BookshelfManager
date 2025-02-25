INSERT INTO Book (id, title, author, genre, publish_Date, page_Count, status, rating, notes, image) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11', 281, 1, 5, 'A classic novel about racial injustice.', NULL),
(2, '1984', 'George Orwell', 'Dystopian', '1949-06-08', 328, 1, 5, 'A chilling vision of totalitarianism.', NULL),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', '1925-04-10', 180, 1, 4, 'A tale of wealth and disillusionment.', NULL),
(4, 'Moby-Dick', 'Herman Melville', 'Adventure', '1851-10-18', 635, 3, NULL, 'A deep exploration of obsession.', NULL),
(5, 'Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28', 279, 1, 5, 'A brilliant satire of manners.', NULL),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 'Fiction', '1951-07-16', 277, 2, NULL, 'Holden Caulfield’s journey of self-discovery.', NULL),
(7, 'Brave New World', 'Aldous Huxley', 'Dystopian', '1932-08-30', 311, 3, NULL, 'A futuristic society with a dark twist.', NULL),
(8, 'The Hobbit', 'J.R.R. Tolkien', 'Fantasy', '1937-09-21', 310, 1, 5, 'A whimsical journey to the Lonely Mountain.', NULL),
(9, 'Fahrenheit 451', 'Ray Bradbury', 'Dystopian', '1953-10-19', 249, 1, 4, 'The danger of censorship and ignorance.', NULL),
(10, 'The Road', 'Cormac McCarthy', 'Post-Apocalyptic', '2006-09-26', 287, 2, NULL, 'A bleak but powerful survival story.', NULL),
(11, 'Crime and Punishment', 'Fyodor Dostoevsky', 'Psychological', '1866-01-01', 671, 3, NULL, 'Explores guilt and redemption.', NULL),
(12, 'The Alchemist', 'Paulo Coelho', 'Philosophical', '1988-01-01', 208, 1, 4, 'A journey to fulfill one’s destiny.', NULL),
(13, 'Frankenstein', 'Mary Shelley', 'Gothic', '1818-01-01', 280, 1, 4, 'The dangers of unchecked ambition.', NULL),
(14, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Gothic', '1890-06-20', 254, 3, NULL, 'A haunting tale of vanity and corruption.', NULL),
(15, 'War and Peace', 'Leo Tolstoy', 'Historical', '1869-01-01', 1225, 3, NULL, 'A grand novel of war and society.', NULL),
(16, 'The Shining', 'Stephen King', 'Horror', '1977-01-28', 447, 1, 5, 'A terrifying psychological horror story.', NULL),
(17, 'Dracula', 'Bram Stoker', 'Horror', '1897-05-26', 418, 1, 4, 'The origins of the modern vampire legend.', NULL),
(18, 'A Game of Thrones', 'George R.R. Martin', 'Fantasy', '1996-08-06', 694, 2, NULL, 'The epic start of A Song of Ice and Fire.', NULL),
(19, 'Dune', 'Frank Herbert', 'Science Fiction', '1965-08-01', 412, 1, 5, 'A sci-fi epic of politics and prophecy.', NULL),
(20, 'The Name of the Wind', 'Patrick Rothfuss', 'Fantasy', '2007-03-27', 662, 3, NULL, 'A beautifully written coming-of-age fantasy.', NULL);

ALTER TABLE Book ALTER COLUMN id RESTART WITH
SELECT MAX(id) + 1 FROM Book;