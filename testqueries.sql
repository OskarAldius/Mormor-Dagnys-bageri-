PRAGMA foreign_keys = ON;

SELECT * FROM products;
SELECT * FROM ingredients;
SELECT * FROM suppliers;
SELECT * FROM recipes;
SELECT * FROM recipeingredients;
SELECT * FROM inventory;
SELECT * FROM supplierproducts;
SELECT * FROM purchase;


SELECT
    products.product_name,
    ingredients.ingredient_name,
    recipeingredients.amount_kg
FROM products INNER JOIN recipes 
ON recipes.product_id = products.product_id INNER JOIN recipeingredients
ON recipeingredients.recipe_id = recipes.recipe_id INNER JOIN ingredients
ON ingredients.ingredient_id = recipeingredients.ingredient_id;



SELECT 
    suppliers.name,
    supplierproducts.articlenum,
    ingredients.ingredient_name,
    supplierproducts.priceperkg
FROM Suppliers INNER JOIN supplierproducts
ON supplierproducts.supplier_id = suppliers.supplier_id INNER JOIN ingredients
ON ingredients.ingredient_id = supplierproducts.ingredient_id;




SELECT 
    products.product_name,
    ingredients.ingredient_name,
    suppliers.name
FROM products INNER JOIN recipes
ON recipes.product_id = products.product_id INNER JOIN recipeingredients
ON recipeingredients.recipe_id = recipes.recipe_id INNER JOIN ingredients
ON ingredients.ingredient_id = recipeingredients.ingredient_id INNER JOIN supplierproducts
ON supplierproducts.ingredient_id = ingredients.ingredient_id INNER JOIN suppliers
ON suppliers.supplier_id = supplierproducts.supplier_id;



SELECT
    ingredients.ingredient_name,
    inventory.quantity_kg,
    inventory.minimumstocklevel_kg
FROM inventory INNER JOIN ingredients
ON ingredients.ingredient_id = inventory.ingredient_id
WHERE inventory.quantity_kg < inventory.minimumstocklevel_kg;