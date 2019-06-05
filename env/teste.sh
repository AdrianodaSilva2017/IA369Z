docker stop IA369Z01
docker rm IA369Z01
docker rmi seminario-imagem1:v1.0.0
ssh-keygen -f "/home/adriano/.ssh/known_hosts" -R "[127.0.0.1]:2200"
docker build -t seminario-imagem1:v1.0.0 .
#./runIA369Z.sh
