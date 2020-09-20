FROM node:13-slim

EXPOSE 2000
ENV REQUIRE_HTTPS=false

USER node
RUN mkdir -p /home/node/clues-for-two
WORKDIR /home/node/clues-for-two

COPY --chown=node . .

RUN npm install

CMD npm start
