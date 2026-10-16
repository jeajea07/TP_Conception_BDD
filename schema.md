## Etape 01: La carte
### Lister les plats avec leur prix
PLAT(**id_plat**, #id_categorienom, nom, prix)

### Question piège
Comme il est mentionné que les montants sont en ariary sans centime donc j'ai utilisé le type INT pour le prix.

J'ai choisi le prix comme identifiant.

## Etape 02: Les catégories
### Ranger les plats par catégorie
CATEGORIE(**id_categorie**, designation)

### Question piège
Au lieu d'ajouter un colonne categorie en VARCHAR dans plat j'ai créé une autre table categorie parce que cela facilite la manipulation et assure la réutilisation des table

Exemple concret: quand on va ajouter un plat et categorie sera en champ de texte, on peut malsaisir cette catégorie 

## Etape 03: Les commandes
### Enregistrer les commandes
COMMANDE(**id_commande**, #id_client, dates)
COMMANDE_PLAT(**id_commande_plat**, **#id_commande**, **#id_plat** quantite) 

### Question piège
Je crée une table d'association COMMANDE_PLAT et j'y mets la quantité

## Etape 04: Les habitués
### Ajouter les clients et rattacher les au commande
CLIENT(**id_client**, nom, prenom)

### Question piège
Non je n'ai pas mis NOT NULL la clé étrangère

## Etape 05: Serveurs et tables
### Ajouter tables et serveurs
TABLE(**id_table**, numero, capacite)
SERVEUR(**id_serveur**,nom,prenom)
COMMANDE_TABLE_SERVEUR(**id_table_serveur**, **#id_table**, **#id_serveur**, **#id_commande**)

### Question piège
Une table c'est fixe, elle reste au gargotte 
Une commande peut être apporté à la table ou à emporter, une commande peut varier