create database store_pro;
use store_pro;

-- 1)Write a stored procedure ShowAllUsers to display all users

CREATE TABLE users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(100)
); 

insert into users(username,email)values('Naila','naila@gmail.com'),('Raniya','raniya@gmail.com'),('Adithya','adithya@gmail.com');

delimiter //
CREATE PROCEDURE AddUser (
IN user_name VARCHAR(100),
IN user_email VARCHAR(50)
)
BEGIN
INSERT INTO users(username, email)
VALUES (user_name, user_email);
END //
delimiter ;

CALL AddUser('John Doe', 'johndoe@gmail.com');

delimiter //
CREATE PROCEDURE ShowAllUsers()
BEGIN
    SELECT * FROM users;
END //
delimiter ;

CALL ShowAllUsers();

-- 2)Write a stored procedure AddQuiz that accepts quiz title and total questions as parameters and inserts them into the table

CREATE TABLE quiz (
quiz_id INT AUTO_INCREMENT PRIMARY KEY,
quiz_title VARCHAR(100),
total_questions INT
);

delimiter //
CREATE PROCEDURE AddQuiz (
IN title VARCHAR(50),
IN questions INT
)
BEGIN
INSERT INTO quiz(quiz_title, total_questions)
VALUES (title, questions);
END //
delimiter ;

CALL AddQuiz('Django', 50);
select * from quiz;

-- 3)Write a stored procedure CountQuestions that takes quiz_id as input and shows the total number of questions

CREATE TABLE questions (
question_id INT AUTO_INCREMENT PRIMARY KEY,
quiz_id INT,
question_text VARCHAR(255)
);

