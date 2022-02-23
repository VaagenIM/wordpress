# wordpress
Installer Wordpress på 1-2-3

```shell
git clone https://github.com/VaagenIM/wordpress/
cd wordpress
echo $USER | sudo sh wordpress-install.sh
```

Enklere blir det ikke!

## Lyst å prøve å installere selv, men på en litt mer moderne måte?
Installer Wordpress via Docker! Fungerer på Win/Mac/Linux (lett å sette opp, og lett å slette):

### Installer Docker
```shell
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

### Kjør docker-compose.yml
```shell
git clone https://github.com/VaagenIM/wordpress/
cd wordpress/docker
export PORT=4800${UID:3}
docker-compose up -d
echo Din nye WP-side: $(hostname -I | cut -d' ' -f1):$PORT
```

`export PORT` definerer PORT variabelen som man finner i `.env` filen. Porten vil i dette tilfellet være 4800 + din bruker ID, er du den første brukeren, får din nettside port :48001. For å endre manuelt kan man enten overskrive ved å kjøre `export PORT=<tall>` eller endre .env, `nano .env`.<br>
Merk at den siste kommandoen, `echo` bare skriver ut din ip-adresse og hvilken port nettsiden kjører på, det kan være lurt å bokmerke denne.
