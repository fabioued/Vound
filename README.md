VOUND APP
========

Code source de l'application VOUND à disposition des curieux et de ceux qui ont envie d'aller plus loin si le projet leur plait. Etant Open Source, vous êtes libre de réutiliser tout ce code à votre aise.


Présentation
------------

Sommaire

<ol>
<li>Présentation</li>
<li>Installation</li>
<li>A propos</li>
</ol>


## Présentation ##

VOUND est un moteur de recherche de clips vidéos qui vous permet de chercher un clip en fonction de vos souvenirs. Vous vous souvenez d'un mot clé du refrain, d'une image particulière, de l'histoire que raconte le clip ? VOUND vous permet de le retrouver en rentrant tout ce dont vous vous souvenez. Pour ce faire, chaque clip répertorié dans la base de donnée est décomposée en une multitude de mots clés :

Couleurs / histoire / paroles / dates / images 


## Installation ##

Pour installer VOUND, il faudra simplement correctement configurer l'accès base de donnée et charger le SQL vound.sql :

* Le fichier config.inc.php

Il contient l'accès à la base de données, il suffit de remplacer les infos par les votres.

* Le fichier vound.sql

Il contient 10 insertions dans la DB en guise de démonstration ainsi que l'architecture MySQL. Il suffit de l'importer dans PHPMyAdmin pour installer la BDD et le contenu demo.


## A propos ##

Mis en place dans le cadre d'un projet Ingemedia durant le Master Informations et Communication. 
