CREATE TABLE commande(
    id_commande INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    dates DATE
);

CREATE TABLE commande_plat(
    id_commande_plat INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id_commande INT,
    id_plat INT,
    quantite INT,
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande),
    FOREIGN KEY (id_plat) REFERENCES plat(id_plat)
);

INSERT INTO commande(dates) VALUES
('2024-06-01'),
('2024-06-02'),
('2024-06-03');

INSERT INTO commande_plat(id_commande, id_plat, quantite) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 3),
(2, 4, 1),
(3, 5, 2);