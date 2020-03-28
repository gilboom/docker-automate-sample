image=$(node -p "require('./package.json').name")
port=$(node -p "require('./config.json').port")

container_id=$(docker run -it -d -p ${port}:${port} $image)
docker logs -f ${container_id}