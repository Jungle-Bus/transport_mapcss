# transport_mapcss
Des règles intransigeantes pour valider les données de transport dans JOSM


Pour ajouter ces règles à JOSM :

* Préférences (Éditer > Préférences)
* Validateur de données
* Onglet Règles du vérificateur d'attributs)
* Bouton +
* Renseigner le chemin du fichier mapcss

## Philosophie
* DRY : si la règle existe déjà dans JOSM ou dans un plugin (PT Assistant), on ne l'ajoute pas à nouveau ;)
* Les erreurs correspondent à des corrections simples à réaliser. Les avertissements correspondent à des modifications qui nécessitent potentiellement une connaissance terrain ou sont plus complexes à corriger.
