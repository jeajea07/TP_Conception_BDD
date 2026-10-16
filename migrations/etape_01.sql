CREATE TABLE plat(
    id_plat INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50),
    prix INT
);

INSERT INTO plat (nom, prix) VALUES
('Romazava',7000),
('Ravitoto sy henakisoa', 8000),
('Akoho sy voanio', 8500),
('Mi sao', 6000),
('Soupe chinoise', 5000),
('Mofo gasy', 1000),
('Ranonampango', 500);
