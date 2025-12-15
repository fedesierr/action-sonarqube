FROM sonarsource/sonar-scanner-cli:11

COPY ./dist /dist

ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
ENV PATH=$JAVA_HOME/bin:$PATH

ENTRYPOINT ["node", "/dist/index.js"] 
