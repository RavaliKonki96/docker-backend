FROM java:8
VOLUME /tmp
ADD target/Unilever-0.0.1-SNAPSHOT.jar /crudback.jar
RUN bash -c 'touch /crudback.jar'
EXPOSE 8081
ENTRYPOINT ["java","-jar","/crudback.jar"]