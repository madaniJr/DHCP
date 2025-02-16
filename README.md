## Construire et Lancer le Conteneur

👐 Construire l'image Docker :

# docker build -t my-dhcp-server .

👐 Lancer le conteneur :

# docker run --net=host --name dhcp-server -d my-dhcp-server

⚠️ Important : L'option --net=host est nécessaire car DHCP fonctionne au niveau bas de réseau.

5️⃣ Vérifier le Bon Fonctionnement

## Vérifiez les logs du conteneur :

docker logs -f dhcp-server

## Testez avec un client DHCP (ex : un PC connecté au réseau) pour voir s'il obtient une adresse IP.





