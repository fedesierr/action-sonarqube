FROM sonarsource/sonar-scanner-cli

COPY ./dist /dist

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk

ENTRYPOINT ["node", "/dist/index.js"] 