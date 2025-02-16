
# Construire et Lancer le Conteneur

## 👐 Construire l'image Docker :

```bash
docker build -t my-dhcp-server .
```

## 👐 Lancer le conteneur :

```bash
docker run --net=host --name dhcp-server -d my-dhcp-server
```

⚠️ **Important :** L'option `--net=host` est nécessaire car DHCP fonctionne au niveau bas de réseau.

## 5️⃣ Vérifier le Bon Fonctionnement

- Vérifiez les logs du conteneur :

```bash
docker logs -f dhcp-server
```

- Testez avec un client DHCP (par exemple, un PC connecté au réseau) pour voir s'il obtient une adresse IP.

## 🚀 Bonus : Utiliser Docker Compose

Créez un fichier `docker-compose.yml` :

```yaml
version: '3'
services:
  dhcp:
    image: my-dhcp-server
    build: .
    network_mode: "host"
    restart: unless-stopped
```

Puis démarrez-le :

```bash
docker-compose up -d
```
