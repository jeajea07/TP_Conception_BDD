CREATE TABLE categorie(
    id_categorie INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    designation VARCHAR(50)
);

INSERT INTO categorie(designation) VALUES
('Plat Malagasy'),
('Plat Chinois'),
('Soupe'),
('Dessert et goûter'),
('Boisson');

ALTER TABLE plat ADD COLUMN id_categorie INT;
ALTER TABLE plat ADD FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie);

UPDATE plat SET id_categorie = 1 WHERE nom IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');
UPDATE plat SET id_categorie = 2 WHERE nom = 'Mi sao';
UPDATE plat SET id_categorie = 3 WHERE nom = 'Soupe chinoise';
UPDATE plat SET id_categorie = 4 WHERE nom = 'Mofo gasy';
UPDATE plat SET id_categorie = 5 WHERE nom = 'Ranonampango';

