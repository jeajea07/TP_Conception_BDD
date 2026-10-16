--- ETAPE 01 ---
SELECT * FROM plat ORDER BY prix DESC;

--- ETAPE 02 ---
SELECT designation, count(*) FROM categorie 
JOIN plat 
ON plat.id_categorie = categorie.id_categorie 
GROUP BY categorie.id_categorie;