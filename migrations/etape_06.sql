CREATE TABLE mode_paiement(
    id_mode_paiement INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(50)
);

CREATE TABLE paiement(
    id_paiement INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id_commande INT,
    id_mode_paiement INT,
    montant DECIMAL,
    date_paiement DATE,
    FOREIGN KEY (id_commande) REFERENCES commande(id_commande),
    FOREIGN KEY (id_mode_paiement) REFERENCES mode_paiement(id_mode_paiement)
);

INSERT INTO mode_paiement(nom) VALUES 
('Espèces'),
('Mobile Money');

INSERT INTO paiement(id_commande, id_mode_paiement, montant, date_paiement) VALUES 
(1, 1, 50.00, '2024-01-15'),
(2, 2, 75.00, '2024-01-16'),
(3, 1, 100.00, '2024-01-17'); 
