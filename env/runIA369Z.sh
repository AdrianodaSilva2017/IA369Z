docker run -d --name IA369Z01 --hostname IA369Z --shm-size 1g --security-opt seccomp:./chrome.json -v ./container:/externo -p 3389:3389 -p 2200:22 -p8889:8888 adriano1977/ia369z:v0.5
