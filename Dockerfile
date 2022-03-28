FROM node:lts-alpine
# install node in container

WORKDIR /usr/src/app
# init folder in container

COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
#copy local file to container


RUN npm install     
# install dependencies in container

RUN npm install -g npm@8.5.5

COPY . .
# copy source code 


RUN npm run build
#build source code in container

EXPOSE 4173
# expose port

CMD ["npm","run","preview"]
#start application