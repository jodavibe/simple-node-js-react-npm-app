FROM node:6-alpine     
RUN addgroup -g 128 -S jenkins 
RUN adduser -S -G jenkins -u 126 -s /bin/bash -h /home/jenkins jenkins
WORKDIR /home/jenkins/jenkins/workspace
RUN npm install --save
COPY . ./
EXPOSE 3000
CMD ["npm", "start"]

