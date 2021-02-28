# Docker Steamcmd Valheim Server

Dockerfile and docker-compose file for launching a steamcmd downloaded Valheim Dedicated Server

## Create docker image and run

To build a docker image with the Valheim dedicated server run

```bash
docker-compose build
```

To start the server, run

```bash
docker-compose up
```

## Server configuration




## World configuration

At first launch, a world-config folder next to the docker-compose.yaml file is generated.
This folder is mapped to folder in the running docker image. See the **volumes** config in [docker-compose.yaml](docker-compose.yaml).

Once running, the server will have generated a new world, however, if you want to run a previously generated world. copy it into the world-config/worlds/ folder

If you want to 



## Thanks

Big thanks to the 