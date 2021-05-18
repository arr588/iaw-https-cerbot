# Práctica HTTPS 1

## HTTPS con Let’s Encrypt y Certbot

Primero tenemos que instalar alguna página en la máquina para poder darle certificado https. En mi caso he usado el repositorio de [instalar Wordpress por CLI](https://github.com/arr588/iaw-practica-cli).

Una vez creada la web pasamos a instalar el certificado:

- Instalamos snap para poder instalar cerbot:

    `snap install core; snap refresh core`

- (Opcional) Desinstalamos versiones anteriores de cerbot si las teníamos instaladas:

    `apt-get remove certbot`

- Instalamos cerbot mediantes snap:

    `snap install --classic certbot`

- Para poder acceder a los comandos de cerbot debemos ponerle un alias:

    `ln -s /snap/bin/certbot /usr/bin/certbot`

- Para finalizar instalamos el certificado. Para ello previamente tenemos que registrar un nombre de dominio con la máquina en la que tengamos la web instalada. Para ello usamos no-ip:

![no-ip](https://raw.githubusercontent.com/arr588/iaw-https-cerbot/main/img/2.png)

Una vez registrado el nombre de dominio usamos este comando para que se instale automáticamente:

`certbot --apache -m demo@demo.es --agree-tos --no-eff-email -d httpsscriptiaw.ddns.net`