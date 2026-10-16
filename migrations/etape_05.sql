CREATE TABLE serveur(
    id_serveur INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(100),
    prenom VARCHAR(100)
);

CREATE TABLE tables(
    id_table INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    numero INT,
    capacite INT
);

CREATE TABLE commande_table_serveur(
    id_commande_table_serveur INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id_commande INT,
    id_table INT,
    id_serveur INT,
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande),
    FOREIGN KEY (id_table) REFERENCES tables(id_table),
    FOREIGN KEY (id_serveur) REFERENCES serveur(id_serveur)
);

INSERT INTO serveur(nom, prenom) VALUES 
('Rakoto', 'Njaka'),
('Rasoa', 'Lalao');

INSERT INTO tables(numero, capacite) VALUES 
(1, 4),
(2, 2),
(3, 3),
(4, 5),
(5, 3),
(6, 4),
(7, 2),
(8, 4);

INSERT INTO commande_table_serveur(id_commande, id_table, id_serveur) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(2, 4, 2),
(2, 5, 1),
(1, 6, 2),
(3, 7, 1),
(1, 8, 2);

