# TSM - Truffières Saint Martin
## _Projet de groupe THP - Décembre 2022_

Ce dépot Github contient l'ensemble du projet TSM qui est un site e-commerce spécialisé dans la vente de truffe et autres spécialités à base de truffe.
L'équipe se compose de :
- Awatef Vicente
- Angélique Precheur
- Lucas Mene
- Alexis Deloingce
- Jaccomo De Grégorio

Le projet a pour client la société Delicat -Roy basé dans l'Hérault (34), qui est un producteur et grossiste sur le maché de la truffe.
## Démarrage rapide
Ces instructions vont vous permettre d'obtenir une copie fonctionnelle du projet sur votre poste de travail.

## Prérequis techniques
Afin de pouvoir executer l'application, vous allez devoir installez les dépendances suivantes

- Ruby version 3.0.0
- Rails version 7.0.4
- PostgreSQL version 1.1

Pour installer Ruby et Rails, veuillez suivre ce lien https://rvm.io/ .
Pour installer PostgreSQL, veuillez suivre ce lien https://www.postgresql.org/download/ .

## Installation

Après le télchargement sur repository Github sur votre oridinateur, veuillez faire la commande suivante dans votre terminal : 
$ bundle install 

Puis la commande suivante : 
$ rails db:create db:migrate db:seed 


## Gems et features utilisées

- Bootstrap a été utilisé pour la partie front
- ActiveAdmin a été utilisé pour la partie Panel-administrateur
- Sendgrid a été utilisé pour la partie envoie des emails (confirmation compte, bienvenue, validation des commandes...)
- Devise a été utilisé pour la partie gestion des utilisateurs 
- Stripe a était utilisé pour la partie encaissement des commandes en CB

## Production

L'application est hébergé sur les serveur de la société "Heroku" à l'adresse suivante :
https://warm-shore-71821.herokuapp.com/ 

Un changment du DNS est prévu ulterieurment à l'adresse suivante : https://truffieressaintmartin.com

## Maquette graphique

L'ensemble de la maquette graphique est disponible sur le repository Github TSM.
