# alios-things-docker
Docker image for AliOS Things Build Environment

How To Use this Image

1.clone the repo for the AliOS-Things （ https://github.com/alibaba/AliOS-Things ） 

2.mount the repo path to the container

For example:
        docker run -v `pwd`/data/AliOS-Things:/home/alios/AliOS-Things  --name alios-things-build -it jacklan/alios-things-docker
        
3.build the code

Fox example:
         aos make helloworld@esp8266
         
the toolchain will be downloaded by the aos.

so it mean you can build the firmware in windows which need linux environment. 

Windows support docker!!!!!!!!!!!!!!!!! 

windows bat example:

docker run -v %cd%/AliOS-Things:/home/alios/AliOS-Things  --name alios-things-build -it jacklan/alios-things-docker
