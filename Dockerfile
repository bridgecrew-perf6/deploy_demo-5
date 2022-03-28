FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]

RUN npm install     

COPY . .
# copy source code 


RUN npm run build

EXPOSE 4173
# expose port

CMD ["npm","run","preview"]
