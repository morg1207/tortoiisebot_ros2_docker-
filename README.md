# Docker tortoisebot ROS-HUMBLE


### 1  Instalar HUSARNET en tu máquina local o RASPBERRY

Para esto solicitar el script de configuración al gestor de laboratorios.
Ejemplo: 
```bash
bash <(curl https://app.theconstruct.ai/rrl-setup.sh) 2cdb5:5f2:794014ab0430462eb6598c4eaf571ae0vH0SEPP6wvBeok2nqzUqfNgd21uNONYgoY7eUHd8Fd
```

### 2 Instalar Docker 

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

### 3 Clonar el repositorio
```bash
cd ~ 
git clone https://github.com/morg1207/tortoisebot-ros2-docker.git
```
### 4 Construir y ejecutar el contenedor

```bash
cd tortoisebot-ros2-docker
sudo docker compose build
sudo docker compose up
```

### 5 Abrir un terminal dentro del contenedor

```bash
sudo docker exec -it tortoisebot_ros2_real_cont /bin/bash
```

