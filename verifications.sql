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