INSERT INTO products(
    product_name
)VALUES(
    'Bröd'
),(
    'Kanelbulle'
),(
    'Prinsesstårta'
);





INSERT INTO ingredients (
    ingredient_name
  
)VALUES(
    'Mjöl'
),(
    'Jäst'    
),(
    'Salt'
),(
    'Vatten'
),(
    'Socker'
),(
    'Smör'
),(
    'Mjölk'
),(
    'Kanel'
),(
    'Ägg'
),(
    'Grädde'
);


INSERT INTO suppliers(
    name,
    address,
    contactperson,
    phone,
    email
)VALUES(
    'Martin&Servera',
    'Stengatan 5',
    'Lisa Andersson',
    '0707-12345',
    'martinServera@mail.se'
),(
    'Axfood',
    'Mjölvägen 12',
    'Erik Johansson', 
    '0708-23456', 
    'axfood@mail.se'
),(
    'Menigo',
    'Ladugårdsgatan 3',
    'Karin Nilsson',
    '0709-34567',
    'menigo@mail.se'
);

INSERT INTO recipes(
    product_id
)VALUES(
    1
),(
    2
),(
    3
);



INSERT INTO recipeingredients(
    recipe_id,
    ingredient_id,
    amount_kg
)VALUES(
    1,
    1,
    1.00
),(
    1,
    2,
    0.03
),(
    1,
    3,
    0.02
),(
    1,
    4,
    0.60
),(
    2,
    1,
    1.00
),(
    2,
    2,
    0.05
),(
    2,
    3,
    0.01
),(
    2,
    5,
    0.20
),(
    2,
    6,
    0.25
),(
    2,
    7,
    0.50
),(
    2,
    8,
    0.02
),(
    3,
    1,
    0.30
),(
    3,
    5,
    0.40
),(
    3,
    9,
    0.50
),(
    3,
    10,
    1.00
);



INSERT INTO inventory(
    ingredient_id,
    quantity_kg,
    minimumstocklevel_kg
)VALUES(
    1,
    120.0,
    50.0
),(
    2,
    2.0,
    5.0
),(
    3,
    15.0,
    5.0
),(
    4,
    500.0,
    100.0
),(
    5,
    40.0,
    20.0
),(
    6,
    8.0,
    10.0
),(
    7,
    60.0,
    30.0
),(
    8,
    0.3,
    1.0
),(
    9,
    25.0,
    10.0
),(
    10,
    30.0,
    15.0
);



-- MS = Martin&Servera, ME = Meningo, AX = Axfood
INSERT INTO supplierproducts(
    supplier_id,
    ingredient_id,
    articlenum,
    priceperkg
)VALUES(
    1,
    1,
    'MS-1001',
    9.50
),(
    2,
    1,
    'AX-2001',
    8.90
),(
    1,
    2,
    'MS-1002',
    45.00
),(
    2,
    2,
    'AX-2002',
    42.50
),(
    1,
    3,
    'MS-1003',
    6.00
),(
    1,
    5,
    'MS-1004',
    12.00
),(
    2,
    5,
    'AX-2003',
    11.50
),(
    2,
    6,
    'AX-2004',
    78.00
),(
    3,
    6,
    'ME-3001',
    74.50
),(
    3,
    7,
    'ME-3002',
    11.00
),(
    2,
    8,
    'AX-2005',
    210.00
),(
    3,
    9,
    'ME-3003',
    32.00
),(
    3,
    10,
    'ME-3004',
    48.00
);


INSERT INTO purchase(
    article_id,
    dateofpurchase,
    amount_kg
)VALUES(
    1,
    '2026-10-01',
    100.0
),(
    3,
    '2026-10-01',
    10.0
),(
    5,
    '2026-10-05',
    20.0
),(
    6,
    '2026-09-05',
    50.0
),(
    9,
    '2026-10-12',
    20.0
),(
    10,
    '2026-10-12',
    80.0
),(
    11,
    '2026-10-20',
    2.0
),(
    12,
    '2026-10-25',
    30.0
),(
    13,
    '2026-11-02',
    40.0
),(
    2,
    '2026-11-09',
    80.0
);