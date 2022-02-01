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
- https://www.hostinger.com/tutorials/run-docker-wordpress

Det kan hende du må bytte ut `8000` i `ports: 8000:80` til et annet tall for å endre porten som skal ha tilgang (Nettsiden vil havne på http://ip-adresse:8000, men vil enkelt kunne byttes ut mot et FQDN (Fully Qualified Domain Name) uten å måtte spesifisere :8000; https://example.com)
