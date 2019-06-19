# Criar e rodar container para experimento:
docker run -d --name IA369Z01 --hostname IA369Z --shm-size 1g --security-opt seccomp:./chrome.json -p 3389:3389 -p 2200:22 -p8889:8888 adriano1977/ia369z:v0.5

# Criar e rodar container para experimento com acesso a arquivos de imagens externos (do proprio leitor):
#
# Caso tenha interesse, comente a linha do primeiro comando (acima) e descomente a linha do comando abaixo, modificando o caminho da pasta para o aquivo externo.
#
#docker run -d --name IA369Z01 --hostname IA369Z --shm-size 1g --security-opt seccomp:./chrome.json -v /home/adriano/container:/externo -p 3389:3389 -p 2200:22 -p8889:8888 adriano1977/ia369z:v0.5


