FROM node:14

WORKDIR /home/ec2-user/Hackathon-Application/shoestop

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]
