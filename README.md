### Overview
The tool used for emulation is [Renode](https://renode.readthedocs.io/en/latest/).
Unlike qemu, Renode allows us to simulate multiple hardwares communicating through I2C, SPI, and more.

### Usage
```sh
# Docker
# Force l'utilisation du UID:GID de l'utilisateur courant plutôt que root
docker build \
	--build-arg userId=`id -u` \
	--build-arg groupId=`id -g` \
	-t renode .

# Podman
podman build -t renode .

podman run \
	--name renode \
	--rm \
	-it renode
```

Once built, go inside the container and start using it
