FROM java:7


ENV FOO bar

COPY src/* /
WORKDIR /
RUN javac -d /bin HelloWorld.java \
 && echo "yes"

ENTRYPOINT ["java"]
CMD ["-cp", "bin", "HelloWorld"]
