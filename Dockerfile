FROM node:20

RUN npm install -g pnpm

WORKDIR /app

COPY package.json ./

RUN pnpm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start:dev"]