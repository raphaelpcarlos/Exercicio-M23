FROM cypress/base:latest

WORKDIR /home/cypress/

RUN apt-get update

RUN apt-get install -y

COPY . /home/cypress/

VOLUME [ "/home/cypress/allure-report" ]

RUN npm install

CMD ["npm", "run", "test:allure"]