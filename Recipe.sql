-- Next steps: fix and edit  

-- To improve: use a better method of adding the ingredients as some have been repeated (bad practice)

-- Possible resolution: creation of a new table which contains ingredients with recipe names allocated

-- 6th June: Finalise, format and run on SQL 

-- To improve: use a better method of adding the ingredients as some have been repeated (bad practice)

-- Possible resolution: creation of a new table which contains ingredients with recipe names allocated

create database MyRecipes;

connect MyRecipes;

create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), instructions VARCHAR(500)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table Ingredient (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50)) ENGINE=InnoDB DEFAULT CHARSET=utf8; 

create table RecipeIngredient (recipe_id INT NOT NULL, ingredient_id INT NOT NULL,
CONSTRAINT fk_recipe FOREIGN KEY(recipe_id) REFERENCES Recipe(id), 
CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES Ingredient(id), 
	ENGINE=InnoDB DEFAULT CHARSET=utf8; 

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Persian Omlette', ‘Tomato Omlette’, 'eggs, tomato, tomatopaste, onion, flatbread', ‘https://blog.termehtravel.com/persian-omelette/');
INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Mirza Ghasemi', ‘Persian aubergines and tomatoes', 'basil, spinach, lettuce, parsely, scallions, garlic, fenugreek, flour, eggs', 'https://www.unicornsinthekitchen.com/mirza-ghasemi-eggplants-tomatoes/');
INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Mastokhiar‘, ‘Persian cucumber yoghurt salad', 'cucumber, mint, yoghurt', 'https://www.thedeliciouscrescent.com/mast-o-khiar-persian-cucumber-yogurt/');
INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Lasagne al forno‘, ‘Lasagne', 'beefmince, onions, celery, plainflour, tomatopaste, tomatoes, cheese, milk, mustard', 'https://www.bbc.co.uk/food/recipes/mary_berrys_lasagne_al_16923');

INSERT INTO Recipe (name, description, ingredients, instructions 
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount) VALUES (2, 1, 5, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 1, 8, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (1, 2, 3, 1);
INSERT INTO RecipeIngredient (recipe_id, ingredient_id, measure_id, amount)  VALUES (2, 3, 7, 1);

