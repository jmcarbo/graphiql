FROM node:latest

LABEL maintainer="László Csatlós (Plutoz)"
LABEL org.label-schema.schema-version = "1.0"
LABEL org.label-schema.name="plutoz/graphiql"
LABEL org.label-schema.url="https://github.com/Plutoz01/graphiql"
LABEL org.label-schema.vcs-url="https://github.com/Plutoz01/graphiql"
LABEL org.label-schema.description="Dockerized GraphiQL UI with configurable API endpoint support"
LABEL org.label-schema.docker.cmd="docker run --name graphiql -p 8080:4000 -e API_ENDPOINT=<Optional URL of remote endpoint>  plutoz/graphiql"

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY package*.json ./
RUN chown -R node:node /home/node/app

USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 4000
CMD [ "npm", "start" ]
