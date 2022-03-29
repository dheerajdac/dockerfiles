docker-compose -f "docker-compose-jenkins.yml"		 	down
docker-compose -f "docker-compose-portainer.yml"	 	down
docker-compose -f "docker-compose-redis.yml"		 	down
docker-compose -f "docker-compose-zookeeper.yml"		down
docker-compose -f "docker-compose-kafka.yml"		 	down
docker-compose -f "cassandra/docker-compose-cassandra.yml" 	down
