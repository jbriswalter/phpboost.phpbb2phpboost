
----------------------------------------   phpbb2phpboost   ----------------------------------------

Le script phpbb2phpboost va vous permettre de convertir votre forum phpBB3 vers le forum PHPBoost3
Merci d'avoir choisi notre solution pour propulser votre forum.
En cas de problème, contactez le support sur le site officiel : http://www.phpboost.com

===================================================================================================

/!\ Attention vous devrez scrupuleusement suivre les consignes dans ce présent document. Nous déclinons toute perte de données le cas échéant. /!\ 


Tout d'abord, il faut savoir que tout ne peux être transféré, seulement la base du forum sera convertie.
Ainsi seront convertis :
- Les catégories, forum et sous-forums (attention si vous avez des catégories dans des forums ou sous-forums celles-ci seront considérées comme des forums).
- Les sujets (leur nombre de vues, de réponses, le dernier posteur, leur type).
- Les messages.
- Les membres.

Ce qui n'est pas converti :
- Les droits sur les forums (il faudra les reparamétrer avec l'administration du forum PHPBoost).
- Les droits accordés aux membres (groupes et droits).
- Les sondages dans les sujets
- Les sujets suivis
- Les sujets déjà lus
- Dans certains cas il se peut que le lien vers le dernier message du forum ne s'affiche pas. Cela sera rétabli une fois qu'un message y sera reposté.

================================================================================================

/!\ Ce script n'est pas conçu pour gérer les éventuelles collision avec des membres inscrits sur PHPBoost ayant le même pseudo que sur phpBB. /!\ 
Si de telles collisions se présentaient, contactez le support (http://www.phpboost.com)

Prérequis :
- PHPBoost 3.0 installé avec le module forum (/!\ Attention celui-ci sera entièrement effacé lors de la conversion /!\).
- phpBB3 installé sur la même base de données que PHPBoost (ceci est primordial !).

Remarque : Vous n'avez pas besoin des fichiers de phpBB, juste sa base de données.


================================================================================================

Conversion :

- 1ère étape : Exécuter les requêtes SQL contenues dans le fichier phpbb2phpboost.sql
Pour cela vous pouvez passer par phpmyadmin (importez le fichier ou collez directement les requêtes dans le champs sql et cliquez sur exécuter).
Si aucune erreur n'est reportée, tout s'est bien passez vous pouvez passer à l'étape suivante, sinon contactez le support sur le site officiel.

- 2ème étape : Vous pouvez reconfigurer votre forum, pensez surtout à remettre les bonnes autorisations si besoin est.

- 3ème étape : Allez dans l'administration puis régénérez le cache du site.

- 4ème étape : PHPBoost et phpBB n'utilisent pas le même système de cryptage de mot de passes, par conséquent les membres doivent retaper leur mot de passe dans une interface prévue à cet effet (il s'agit de la page phpbb2phpboost.php). Lors de la mise en place du forum vous devrez expliquer à vos membre qu'ils doivent d'abord passer par cette interface pour pouvoir se connecter normalement.




Votre forum a été convertit correctement, merci d'avoir choisi PHPBoost pour votre site.
Bonne continuation!


                                                                        L'équipe PHPBoost
