DROP DATABASE IF EXISTS meals_db;

CREATE DATABASE meals_db;

USE meals_db;

CREATE TABLE meals (
  id INT NOT NULL AUTO_INCREMENT,
  meal_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (id),
  difficulty NUMBER(3) NOT NULL
);

CREATE TABLE ingredients (
    id INT NOT NULL AUTO_INCREMENT,
    ingredient_name VARCHAR(30) NOT NULL,
    FOREIGN KEY (meal_id) REFERENCES meals(id),
    PRIMARY KEY (id)
    );
