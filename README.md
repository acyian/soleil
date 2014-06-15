Ghouls : projet avec le soleil
===============================

Travail de fin d'année pour l'ieps (chénée - fléron)

Réalisé par : Rey Emilie - Verschoren Vanessa - Mestdag Patricia

URL du site s'il est en ligne (il n’est pas en ligne)
www.eft.com - www.alpha.com - www.ceramique.com
Adresse du compte github/agenda, ...
https://github.com/wolfoux/soleil

Utilisation de l’application:
Comment l'installer en local ?
Mettre le fichier (en changeant le nom: "aveclesoleil") à la racine de www dans Wamp
Dans le dossier :
‘C:\Windows\System32\drivers\etc\’
Ouvrir le fichier ‘hosts’ en tant qu’administrateur pour pouvoir le modifier et l’enregistrer.
Ajouter à la fin de ce fichier :
127.0.0.1 www.soleil.com
127.0.0.1 www.eft.com
127.0.0.1 www.alpha.com
127.0.0.1 www.ceramique.com

Installation de l’application:
Dans le fichier : wamp/bin/apache/apache2.4.4/conf/ httpd.conf
Rajouter ces lignes en fin de fichier : IncludeOptional "c:/wamp/vhosts/*" Include "c:/wamp/alias/*" <VirtualHost *:80> ServerName localhost DocumentRoot "C:/wamp/www" <Directory "C:/wamp/www"> Options Indexes FollowSymLinks AllowOverride All Order Deny,Allow Deny from all Allow from 127.0.0.1 Allow from ::1 Allow from localhost </Directory> </VirtualHost> <VirtualHost *:80> ServerName www.eft.com DocumentRoot "C:/wamp/www/aveclesoleil/web" <Directory "C:/wamp/www/aveclesoleil/web"> DirectoryIndex app_dev.php Options -Indexes AllowOverride All Allow from All </Directory> </VirtualHost>

<VirtualHost *:80> ServerName www.ceramique.com DocumentRoot "C:/wamp/www/aveclesoleil/web" <Directory "C:/wamp/www/aveclesoleil/web"> DirectoryIndex app_dev.php Options -Indexes AllowOverride All Allow from All
</Directory> </VirtualHost> <VirtualHost *:80> ServerName www.alpha.com DocumentRoot "C:/wamp/www/aveclesoleil/web" <Directory "C:/wamp/www/aveclesoleil/web"> DirectoryIndex app_dev.php Options -Indexes AllowOverride All Allow from All </Directory> </VirtualHost>

<VirtualHost *:80>
ServerName www.soleil.com
DocumentRoot "C:/wamp/www/aveclesoleil/web"
<Directory "C:/wamp/www/aveclesoleil/web">
DirectoryIndex app_dev.php
Options -Indexes
AllowOverride All
Allow from All
</Directory>
</VirtualHost>

## Documentation :

Aller dans zdocumentation/Documenttechnique.pdf