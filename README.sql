# RecipeDatabase

-- 6th June: Finalise and run on SQL

-- To improve: use a better method of adding the ingredients as some have been repeated (bad practice)

-- Possible resolution: creation of a new table which contains ingredients with recipe names allocated

create database MyRecipes;

connect MyRecipes;

create table Recipe (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, name VARCHAR(25), description VARCHAR(50), ingredients VARCHAR(500), instructions VARCHAR(500) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Persian Omlette', ‘Tomato Omlette’, 'eggs, tomato, tomato paste, onion, flatbread', ‘https://blog.termehtravel.com/persian-omelette/');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Kookoo Sabzi', ‘Persian herb frittata', 'https://www.foodandwine.com/recipes/kookoo-sabzi');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Mirza Ghasemi', ‘Persian aubergines and tomatoes', 'basil, spinach, lettuce, parsely, scallions, garlic, fenugreek leaves, flour, eggs', 'https://www.unicornsinthekitchen.com/mirza-ghasemi-eggplants-tomatoes/');
INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Mast-o-khiar‘, ‘Persian cucumber yoghurt salad', 'cucumber, mint, yoghurt', 'https://www.thedeliciouscrescent.com/mast-o-khiar-persian-cucumber-yogurt/');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Khashke bademjan‘, ‘Persian kashk and aubergine dip', 'aubergine, onion, garlic, kashk, bread, saffron, mint', 'https://www.foodandwine.com/recipes/kashke-bademjan-iranian-kashk-and-eggplant-dip');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Lasagne al forno‘, ‘Lasagne', 'beef mince, onions, celery, plain flour, tomato paste, tomatoes, cheese, milk, mustard', 'https://www.bbc.co.uk/food/recipes/mary_berrys_lasagne_al_16923');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Leek and potato soup‘, ‘Creamy soup', 'potatoes, butter, onions, milk, cream, stock, leeks', ‘https://www.bbcgoodfood.com/recipes/leek-potato-soup');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Simple chicken ramen‘, ‘Chicken ramen', 'chicken breast, ginger, garlic, soy sauce, mirin, chicken stock, shitake mushroooms, eggs, scallions, ramen noodles', ‘https://www.forkknifeswoon.com/simple-homemade-chicken-ramen/');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Chicken korma‘, ‘Chicken korma', 'chicken breast, butter, onions, ginger, coriander, chilli powder, mango chutney, chicken stock, double cream , rice', ‘https://realfood.tesco.com/recipes/chicken-korma-curry.html');

INSERT INTO Recipe (name, description, ingredients, instructions) VALUES (‘Chicken burrito‘, ‘Chicken burrito', 'chicken thighs, garlic, coriander, black beans, rice, tomatoes, tortillas, cheese, yoghurt', ‘https://www.jamieoliver.com/recipes/chicken-recipes/cracking-chicken-burrito/');

SELECT r.name AS 'Recipe', r.instructions, ri.amount AS 'Amount', mu.name AS 'Unit of Measure', i.name AS 'Ingredient' FROM Recipe r JOIN RecipeIngredient ri on r.id = ri.recipe_id JOIN Ingredient i on i.id = ri.ingredient_id LEFT OUTER JOIN Measure mu on mu.id = measure_id;
