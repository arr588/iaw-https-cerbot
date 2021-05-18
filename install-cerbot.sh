#!/bin/bash

#-------------------------------------------------------------------------------
# Instalación de Certbot
#-------------------------------------------------------------------------------

# Instalamos y actualizamos snapd
snap install core; snap refresh core

# Por precaución eliminamos instalaciones anteriores de certbot si las hubiese
apt-get remove certbot

# Instalamos certbot
snap install --classic certbot

# Le ponemos un alias a los comandos de certbot
ln -s /snap/bin/certbot /usr/bin/certbot

# Obtenemos los certificados con certbot para apache
certbot --apache -m demo@demo.es --agree-tos --no-eff-email -d httpsscriptiaw.ddns.net