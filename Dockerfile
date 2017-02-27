FROM java:8 

RUN apt-get update
RUN apt-get install -y vim

COPY src /home/root/HelloWorld/src

WORKDIR /home/root/HelloWorld

RUN mkdir bin


RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java","-cp","bin", "HelloWorld"]



