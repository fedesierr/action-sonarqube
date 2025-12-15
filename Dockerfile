FROM sonarsource/sonar-scanner-cli:12

COPY ./dist /dist

ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["node", "/dist/index.js"] 
