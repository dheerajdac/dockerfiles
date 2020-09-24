# dockerfiles

docker-compose -f "docker-compose-network.yml" down
docker-compose -f "docker-compose-network.yml" up -d --build
docker-compose -f "docker-compose-devops.yml" down
docker-compose -f "docker-compose-devops.yml" up -d --build
docker-compose -f "docker-compose-mango-db.yml" down
docker-compose -f "docker-compose-mango-db.yml" up -d --build
docker-compose -f "docker-compose-redis.yml" down
docker-compose -f "docker-compose-redis.yml" up -d --build
docker-compose -f "docker-compose-zookeeper.yml" down
docker-compose -f "docker-compose-zookeeper.yml" up -d --build

