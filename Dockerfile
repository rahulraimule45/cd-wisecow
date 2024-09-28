FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
docker build -t wisecow-app 
docker run -p 3000:3000 wisecow-app
