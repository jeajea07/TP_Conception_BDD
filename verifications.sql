--- ETAPE 01 ---
SELECT * FROM plat ORDER BY prix DESC;

--- ETAPE 02 ---
SELECT designation, count(*) FROM categorie 
JOIN plat 
ON plat.id_categorie = categorie.id_categorie 
GROUP BY categorie.id_categorie;

--- ETAPE 03 ---
SELECT commande.id_commande, commande.dates, SUM(commande_plat.quantite * plat.prix) AS montant_total
FROM commande
JOIN commande_plat ON commande.id_commande = commande_plat.id_commande
JOIN plat ON commande_plat.id_plat = plat.id_plat
GROUP BY commande.id_commande;

--- ETAPE 04 ---
SELECT client.nom, client.prenom, COUNT(commande.id_commande) AS nombre_commandes, messages
FROM client
LEFT JOIN commande ON client.id_client = commande.id_client
GROUP BY client.id_client;

--- ETAPE 05 ---
SELECT serveur.nom, serveur.prenom, COUNT(commande_table_serveur.id_commande_table_serveur) AS nombre_commandes, SUM(commande_plat.quantite * plat.prix) AS chiffre_d_affaire
FROM serveur
JOIN commande_table_serveur ON serveur.id_serveur = commande_table_serveur.id_serveur
JOIN commande ON commande_table_serveur.id_commande = commande.id_commande
JOIN commande_plat ON commande.id_commande = commande_plat.id_commande
JOIN plat ON commande_plat.id_plat = plat.id_plat
GROUP BY serveur.id_serveur;