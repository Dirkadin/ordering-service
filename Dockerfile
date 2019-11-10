FROM node
RUN apt-get -y update 
RUN apt-get install -y git

RUN git clone https://github.com/Dirkadin/ordering-service.git

COPY /ordering-service /app
WORKDIR /app

RUN npm install

CMD ["npm", "start"]

