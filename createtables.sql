PRAGMA foreign_keys = ON;

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name VARCHAR(60) NOT NULL
);

CREATE TABLE ingredients (
    ingredient_id INTEGER PRIMARY KEY,
    ingredient_name VARCHAR(60) NOT NULL
);

CREATE TABLE suppliers (
    supplier_id INTEGER PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    address VARCHAR(128) NOT NULL,
    contactperson VARCHAR(60) NOT NULL,
    phone VARCHAR(60) NOT NULL,
    email VARCHAR(60) NOT NULL
);

CREATE TABLE recipes (
    recipe_id INTEGER PRIMARY KEY,
    product_id INTEGER NOT NULL UNIQUE,
    CONSTRAINT fk_recipes_product FOREIGN KEY(product_id) REFERENCES products(product_id)
);

CREATE TABLE recipeingredients (
    recipe_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    amount_kg FLOAT NOT NULL,
    CONSTRAINT pk_recipeingredients PRIMARY KEY(recipe_id, ingredient_id),
    CONSTRAINT fk_recipeingredients_recipe FOREIGN KEY(recipe_id) REFERENCES recipes(recipe_id),
    CONSTRAINT fk_recipeingredients_ingredient FOREIGN KEY(ingredient_id) REFERENCES ingredients(ingredient_id)
);

CREATE TABLE inventory (
    ingredient_id INTEGER PRIMARY KEY,
    quantity_kg FLOAT NOT NULL,
    minimumstocklevel_kg FLOAT NOT NULL,
    CONSTRAINT fk_inventory_ingredient FOREIGN KEY(ingredient_id) REFERENCES ingredients(ingredient_id)
);

CREATE TABLE supplierproducts (
    article_id INTEGER PRIMARY KEY,
    supplier_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    articlenum VARCHAR(40) NOT NULL,
    priceperkg FLOAT NOT NULL,
    CONSTRAINT fk_supplierproducts_supplier FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id),
    CONSTRAINT fk_supplierproducts_ingredient FOREIGN KEY(ingredient_id) REFERENCES ingredients(ingredient_id)
);

CREATE TABLE purchase (
    purchase_id INTEGER PRIMARY KEY,
    article_id INTEGER NOT NULL,
    dateofpurchase VARCHAR(30) NOT NULL,
    amount_kg FLOAT NOT NULL,
    CONSTRAINT fk_purchase_article FOREIGN KEY(article_id) REFERENCES supplierproducts(article_id)
);