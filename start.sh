docker-compose -f "docker-compose-zookeeper.yml"		down
docker-compose -f "docker-compose-jenkins.yml"		 	down
docker-compose -f "docker-compose-portainer.yml"	 	down
docker-compose -f "docker-compose-redis.yml"		 	down
docker-compose -f "docker-compose-kafka.yml"		 	down
docker-compose -f "cassandra/docker-compose-cassandra.yml" 	down
docker-compose -f "docker-compose-zookeeper.yml" 		up -d --build
docker-compose -f "docker-compose-jenkins.yml" 			up -d --build
docker-compose -f "docker-compose-portainer.yml" 		up -d --build
docker-compose -f "docker-compose-redis.yml" 			up -d --build
docker-compose -f "docker-compose-kafka.yml" 			up -d --build
docker-compose -f "cassandra/docker-compose-cassandra.yml" 	up -d --build
