FROM java:7

COPY HelloWorld.java /
ENV FOO bar

RUN javac HelloWorld.java
RUN apt-get update && apt-get install -y vim

ENTRYPOINT ["java", "HelloWorld"]


