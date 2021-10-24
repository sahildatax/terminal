FROM ubuntu

WORKDIR /home/app

RUN  apt-get update && apt-get install -y curl &&curl -sL https://deb.nodesource.com/setup_14.x | bash -  && apt-get install -y nodejs 

RUN apt-get install build-essential -y

COPY package*.json ./ 

RUN npm install

COPY . .

CMD ["node","index.js"]

EXPOSE 8000






