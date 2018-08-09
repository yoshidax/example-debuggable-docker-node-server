FROM node:8.9-alpine
ENV NODE_ENV develop
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install
COPY . .
EXPOSE 3000 9229
CMD npm run dev
