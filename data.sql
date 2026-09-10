USE library_management;

-- Insert 5 Users
-- 1 Admin + 4 Members

INSERT INTO users (name, email, password, role) VALUES
('Admin User', 'admin@library.com', '$2b$10$P5RkbDCfSUfNuRMMyI1y.OVdHGE2dCYxRCgmOHHj.Sm3Ala.pDZ.K', 'admin'),
('John Silva', 'john@gmail.com', '$2b$10$P5RkbDCfSUfNuRMMyI1y.OVdHGE2dCYxRCgmOHHj.Sm3Ala.pDZ.K', 'member'),
('Sarah Fernando', 'sarah@gmail.com', '$2b$10$P5RkbDCfSUfNuRMMyI1y.OVdHGE2dCYxRCgmOHHj.Sm3Ala.pDZ.K', 'member'),
('David Perera', 'david@gmail.com', '$2b$10$P5RkbDCfSUfNuRMMyI1y.OVdHGE2dCYxRCgmOHHj.Sm3Ala.pDZ.K', 'member'),
('Nimal Kumar', 'nimal@gmail.com', '$2b$10$P5RkbDCfSUfNuRMMyI1y.OVdHGE2dCYxRCgmOHHj.Sm3Ala.pDZ.K', 'member');

-- Insert Books

INSERT INTO books
(title, author, category, quantity, available_quantity) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 5, 3),
('Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Fantasy', 10, 7),
('Clean Code', 'Robert C. Martin', 'Programming', 6, 4),
('The Alchemist', 'Paulo Coelho', 'Fiction', 8, 8),
('Introduction to Algorithms', 'Thomas H. Cormen', 'Computer Science', 4, 2),
('Atomic Habits', 'James Clear', 'Self Help', 7, 5),
('Pride and Prejudice', 'Jane Austen', 'Romance', 5, 5),
('Database System Concepts', 'Abraham Silberschatz', 'Database', 6, 4),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 9, 8),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Finance', 5, 3);


-- Insert Borrowings

INSERT INTO borrowings
(user_id, book_id, borrow_date, return_date, status) VALUES
(2, 1, '2026-09-01', NULL, 'borrowed'),
(3, 2, '2026-08-28', NULL, 'borrowed'),
(4, 3, '2026-08-25', '2026-09-02', 'returned'),
(5, 5, '2026-09-03', NULL, 'borrowed'),
(2, 6, '2026-08-15', '2026-08-25', 'returned'),
(3, 8, '2026-08-20', '2026-08-30', 'returned'),
(4, 9, '2026-09-04', NULL, 'borrowed'),
(5, 10, '2026-08-10', '2026-08-18', 'returned');
