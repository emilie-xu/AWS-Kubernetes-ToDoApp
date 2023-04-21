# syntax=docker/dockerfile:1
   
FROM node:18-alpine
WORKDIR /app
COPY . . #packages*.json
COPY ..
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 3000