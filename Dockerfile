FROM ubuntu:latest

# Installation du serveur DHCP
RUN apt-get update && apt-get install -y isc-dhcp-server

# Copier le fichier de configuration
COPY dhcpd.conf /etc/dhcp/dhcpd.conf

# Exposer le port DHCP (67/UDP)
EXPOSE 67/udp

# Commande pour démarrer le service DHCP
CMD ["dhcpd", "-f", "-4", "-d"]
