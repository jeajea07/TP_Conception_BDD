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

