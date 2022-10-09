docker network create thingder_network;

docker stop thingder_mariadb_1;
docker rm thingder_mariadb_1;

docker run \
    --network thingder_network \
    --name thingder_mariadb_1 \
    --hostname thingder_mariadb_1 \
    -e MARIADB_ROOT_PASSWORD=thingder \
    -e MARIADB_DATABASE=thingder \
    -e MARIADB_USER=thingder \
    -e MARIADB_PASSWORD=thingder \
    -p 3306:3306 \
    -d mariadb

docker system prune --volumes -f -a;