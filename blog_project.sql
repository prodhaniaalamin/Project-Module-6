-- Active: 1736347674537@@127.0.0.1@3306@blogs
-- Create Authors Table
CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Categories Table
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Blogs Table
CREATE TABLE blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);



-- CRUD Operations for authors Table

--Add a new author:
INSERT INTO authors (author_name) VALUES ('Author Name');

--Retrieve all authors:
SELECT * FROM authors;

--Retrieve a specific author by ID:
SELECT * FROM authors WHERE id = 1;

--Update an author's name:
UPDATE authors SET author_name = 'Updated Author Name' WHERE id = 1;

--Delete an author by their ID:
DELETE FROM authors WHERE id = 1;





-- CRUD Operations for categories Table
--Add a new category:
INSERT INTO categories (category_name) VALUES ('Category Name');

--Retrieve all categories:
SELECT * FROM categories;

--Retrieve a specific category by ID:
SELECT * FROM categories WHERE id = 1;

--Update a category's name:
UPDATE categories SET category_name = 'cat1' WHERE id = 1;

--Delete a category by its ID:
DELETE FROM categories WHERE id = 1;





-- CRUD Operations for blogs Table
--Add a new blog:
INSERT INTO blogs (title, body, category_id, author_id) VALUES ('Blog Title', 'Blog Body', 1, 1);

--Retrieve all blogs:
SELECT * FROM blogs;

--Retrieve a specific blog by ID:
SELECT * FROM blogs WHERE id = 1;

--Update a blog's title and body:
UPDATE blogs SET title = 'Updated Blog Title', body = 'Updated Blog Body' WHERE id = 1;

--Update a blog's category or author:
UPDATE blogs SET category_id = 2, author_id = 2 WHERE id = 1;

--Delete a blog by its ID:
DELETE FROM blogs WHERE id = 1;

--Retrieve blogs with their category and author:
SELECT blogs.title, blogs.body, categories.category_name, authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;



--Get all blogs written by a specific author:
SELECT authors.author_name, blogs.title, blogs.body
FROM blogs
JOIN authors ON blogs.author_id = authors.id
WHERE authors.id = 3;


-- Get all blogs under a specific category:
SELECT categories.category_name, blogs.title, blogs.body
FROM blogs
JOIN categories ON blogs.category_id = categories.id
WHERE categories.category_name = "Gynecology";
