FROM 20-alpine3.18
WORKDIR /app
COPY package*.json ./
RUN yarn
COPY . .
RUN yarn build
EXPOSE 3000
CMD [ "yarn", "start" ]