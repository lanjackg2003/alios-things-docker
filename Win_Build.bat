docker stop alios-things-build
docker rm alios-things-build
docker run -v %cd%:/home/alios/AliOS-Things --name alios-things-build -it  --rm jacklan/alios-things-docker