
----------------------------------------   phpbb2phpboost   ----------------------------------------

Le script phpbb2phpboost va vous permettre de convertir votre forum phpBB3 vers le forum PHPBoost3
Merci d'avoir choisi notre solution pour propulser votre forum.
En cas de probl�me, contactez le support sur le site officiel : http://www.phpboost.com

===================================================================================================

/!\ Attention vous devrez scrupuleusement suivre les consignes dans ce pr�sent document. Nous d�clinons toute perte de donn�es le cas �ch�ant. /!\ 


Tout d'abord, il faut savoir que tout ne peux �tre transf�r�, seulement la base du forum sera convertie.
Ainsi seront convertis :
- Les cat�gories, forum et sous-forums (attention si vous avez des cat�gories dans des forums ou sous-forums celles-ci seront consid�r�es comme des forums).
- Les sujets (leur nombre de vues, de r�ponses, le dernier posteur, leur type).
- Les messages.
- Les membres.

Ce qui n'est pas converti :
- Les droits sur les forums (il faudra les reparam�trer avec l'administration du forum PHPBoost).
- Les droits accord�s aux membres (groupes et droits).
- Les sondages dans les sujets
- Les sujets suivis
- Les sujets d�j� lus
- Dans certains cas il se peut que le lien vers le dernier message du forum ne s'affiche pas. Cela sera r�tabli une fois qu'un message y sera repost�.

================================================================================================

/!\ Ce script n'est pas con�u pour g�rer les �ventuelles collision avec des membres inscrits sur PHPBoost ayant le m�me pseudo que sur phpBB. /!\ 
Si de telles collisions se pr�sentaient, contactez le support (http://www.phpboost.com)

Pr�requis :
- PHPBoost 3.0 install� avec le module forum (/!\ Attention celui-ci sera enti�rement effac� lors de la conversion /!\).
- phpBB3 install� sur la m�me base de donn�es que PHPBoost (ceci est primordial !).

Remarque : Vous n'avez pas besoin des fichiers de phpBB, juste sa base de donn�es.


================================================================================================

Conversion :

- 1�re �tape : Ex�cuter les requ�tes SQL contenues dans le fichier phpbb2phpboost.sql
Pour cela vous pouvez passer par phpmyadmin (importez le fichier ou collez directement les requ�tes dans le champs sql et cliquez sur ex�cuter).
Si aucune erreur n'est report�e, tout s'est bien passez vous pouvez passer � l'�tape suivante, sinon contactez le support sur le site officiel.

- 2�me �tape : Vous pouvez reconfigurer votre forum, pensez surtout � remettre les bonnes autorisations si besoin est.

- 3�me �tape : Allez dans l'administration puis r�g�n�rez le cache du site.

- 4�me �tape : PHPBoost et phpBB n'utilisent pas le m�me syst�me de cryptage de mot de passes, par cons�quent les membres doivent retaper leur mot de passe dans une interface pr�vue � cet effet (il s'agit de la page phpbb2phpboost.php). Lors de la mise en place du forum vous devrez expliquer � vos membre qu'ils doivent d'abord passer par cette interface pour pouvoir se connecter normalement.




Votre forum a �t� convertit correctement, merci d'avoir choisi PHPBoost pour votre site.
Bonne continuation!


                                                                        L'�quipe PHPBoost
