/*
-- Initialisation des tables
INSERT INTO Country(id, code, name) VALUES
    (1, 'FR', 'France'), -- Les clés sont auto-générées
    (2, 'UK', 'United Kingdom'),
    (3, 'US', 'United States of America');
-- On peut fixer la valeur des clés auto-générées, mais il faut ensuite
-- réinitialiser le compteur de clé auto-générée
-- Attention : la syntaxe est différente selon le SGBD utilisé
ALTER TABLE Country ALTER COLUMN id RESTART WITH 4;
*/

-- Initialisation des tables
INSERT INTO Country(code, name) VALUES
                                    ('FR', 'France'), -- Les clés sont auto-générées
                                    ('UK', 'United Kingdom'),
                                    ('US', 'United States of America');

INSERT INTO CITY(name, population, country_id) VALUES
                                                   ('Paris', 12, SELECT id FROM Country WHERE code = 'FR'),
                                                   ('London', 18, SELECT id FROM Country WHERE code = 'UK'),
                                                   ('New York', 27, SELECT id FROM Country WHERE code = 'US');