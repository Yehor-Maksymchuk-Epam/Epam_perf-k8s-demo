FROM eclipse-temurin:11

WORKDIR /app

COPY . ${WORKDIR}

RUN ./mvnw package

CMD [ "./mvnw", "gatling:test" ]
# ENTRYPOINT [ "./mvnw gatling:test" ]