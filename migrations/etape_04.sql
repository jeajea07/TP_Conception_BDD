CREATE TABLE client(
    id_client INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO client(nom,prenom,email) VALUES 
('Doe', 'John', 'john.doe@example.com'),
('Smith', 'Jane', 'jane.smith@example.com'),
('Johnson', 'Bob', 'bob.johnson@example.com');

ALTER TABLE commande ADD COLUMN id_client INT;
ALTER TABLE commande ADD FOREIGN KEY (id_client) REFERENCES client(id_client);

UPDATE commande SET id_client = 1 WHERE id_commande IN (1,2);
UPDATE commande SET id_client = 2 WHERE id_commande = 3;


