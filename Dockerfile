FROM node:16


# Setting up home dir
WORKDIR /app

# Copy Files in container
COPY package.json ./

COPY src ./src
COPY bin ./bin


RUN npm install

EXPOSE 3000

CMD ["node", "src/000.js"]

