# Docker tortoisebot ROS-HUMBLE

### Actualizar hora  y fecha

```
sudo date -s "$(wget -qSO- --max-redirect=0 google.com 2>&1 | grep Date: | cut -d' ' -f5-8)Z" 
```

### Instalar Docker 

```bash
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```

### Clonar el repositorio
```bash
cd ~ 
git clone https://github.com/morg1207/tortoiisebot_ros2_docker-.git
```

## Ejecctar

```bash
cd tortoiisebot_ros2_docker-
sudo docker compose up
```

### Abrir un terminal

```bash
sudo docker exec -it tortoisebot_ros2_real_cont /bin/bash
```


### Ejecutar en tu máquina local
```bash
echo "export ROS_DOMAIN_ID=1" >> ~/.bashrc
source ~/.bashrc
```
ahora ya peudes ver los nodos desde tu máquina local
