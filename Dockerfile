FROM node:14-alpine
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node
WORKDIR /home/node/app
COPY --chown=node:node package*.json ./
USER node
RUN npm install
COPY --chown=node:node src .
EXPOSE 3000
CMD [ "npm", "run", "start" ]
