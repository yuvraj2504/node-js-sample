FROM ubuntu


RUN apt-get update && apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get upgrade -y
RUN apt-get install -y nodejs

COPY package.json package.json
COPY . .

RUN npm install
COPY app.json app.json



ENTRYPOINT [ "npm", "start" ]
