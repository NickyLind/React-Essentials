FROM node:20-slim

WORKDIR /usr/src/app

COPY app/package*.json ./
RUN npm install

COPY app/ .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]
