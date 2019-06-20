FROM node:latest
LABEL maintainer="László Csatlós (Plutoz)"
LABEL repository="https://github.com/Plutoz01/graphiql"

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app
COPY package*.json ./

USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 4000
CMD [ "npm", "start" ]
