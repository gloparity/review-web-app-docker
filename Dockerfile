# using nodejs base image 
FROM node:14
# defining working directory
WORKDIR /app
# using the root user to execute the container image
USER root
# copying the nodejs dependency files
COPY package.json .
# installing node npm (which is a node dependency) for nodejs
RUN npm install
# copying all application files to the workdirectory
COPY . /app/
#exposing port
EXPOSE 3000
# executing web application
CMD [ "node", "server.js" ]
