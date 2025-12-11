#Use the latest LTS version of Node.js as the base image
FROM node:24-alpine

#Set the working directory inside the container
WORKDIR /app

#Copy package.json and package-lock.json to the working directory
COPY package*.json ./

#Install the project dependencies
RUN npm install

#Copy the rest of the application code to the working directory
COPY . .

#Expose the port that the application will run on
EXPOSE 3000

#Start the application
CMD ["npm", "start"]
