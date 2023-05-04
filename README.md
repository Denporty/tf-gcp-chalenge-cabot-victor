# Rendu semaine DevOps Victor CABOT

## Création d'une convention de nommage 
Organisation des fichiers de façon strict pour bien différencier mes différents modules. Mise en place de variables et respect de la nommenclature. Nommage cohérent des différents éléments afin de facilement les identifier.

## Bucket Storage
ATTENTION IL EST POSSIBLE QU'IL FAILLE CREER LE BUCKET AVANT DE APPLY A CE MOMENT LA SUPPRIMER LIGNES 2 A 5 ET APPLY ET REMETTRE LIGNE 2 A 5 AVANT DE NOUVEAU APPLY

Mise en place d'un bucket storage en mode backend

## Cloud functions
Mise en place d'une cloud function permettant de ZIP le contenu d'un document (src en l'état) et de le récupérer.

## BigQuery Table
Mise en place d'une BigQuery Table permettant (idéalement) de stocker en db le contenu d'un fichier CSV.
En l'état la BigQuery upload le CSV dans un bucket et crée la table mais n'upload pas les éléments du CSV en DB.

## Code partageable
Code totalement récupérable via le main.tf (sauf potentiellement pour le bucket storage en mode backend).
