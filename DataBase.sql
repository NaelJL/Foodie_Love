-- SQLite

-- Insérer des recettes
INSERT INTO recipes (
    title, 
    slug, 
    duration,
    ingredients,
    content, 
    online, 
    created_at,
    category_id
) VALUES (
    'Curry de patate douce',
    'curry-de-patate-douce',
    40,
    'Conserve de lait de coco, Patate douce, lentilles corail, courgettes, sauce tomate, oignons, carottes, ail, curry, cumin, sel',
    'Faire revenir ail, oignons, carottes dans un filet d huile d olive.
    Ajouter les épices puis la conserve de coco.
    Ajouter le reste des ingrédients, rallonger avec de l eau si besoin.
    Laisser mijoter jusqu à ce que tout soit fondant.
    Déguster avec des pousses d épinard fraiches ou de la coriandre sur le dessus.',
    TRUE,
    1665128264,
    2
), (
    'Salade automnale de fruits',
    'salade-de-fruits',
    10,
    'Pommes, Poires, Raisins, Oranges, Menthe',
    'Couper les fruits en morceaux, sucrer si nécessaire, ajouter des feuilles de menthe au dessus.',
    TRUE,
    1665128264,
    3
), (
    'Soupe de courgettes',
    'soupe-de-courgettes',
    30,
    'Courgettes, Oignons, Ail, Pommes de terre',
    'Couper les légumes. Laisser cuire doucement puis mouliner ensemble. Servir avec quelques noisettes et du pain complet grillé.',
    TRUE,
    1665128264,
    1
);

-- Créer la table de recettes
CREATE TABLE recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(150) NOT NULL,
    slug VARCHAR(50) NOT NULL UNIQUE,
    duration SMALLINT,
    ingredients TEXT,
    content TEXT,
    online BOOLEAN,
    created_at DATETIME,
    category_id INTEGER,
    FOREIGN KEY (category_id) REFERENCES categories (id)
);

-- Insérer les catégories de plat
INSERT INTO categories (title)
VALUES
    ('Entrée'),
    ('Plat'),
    ('Dessert');

-- Créer une table catégories
CREATE TABLE IF NOT EXISTS categories (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title VARCHAR(150) NOT NULL,
    description TEXT
);