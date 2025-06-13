FROM sonarsource/sonar-scanner-cli

COPY ./dist /dist

ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto.x86_64

ENTRYPOINT ["node", "/dist/index.js"] 