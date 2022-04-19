# Base image
FROM ubuntu:18.04
RUN mkdir /usr/local/src/hello-angular/
WORKDIR /usr/src/hello-angular
COPY . .
# Installing Required Packages
RUN     apt-get update && \
        apt-get upgrade -y && \
        apt-get install -y git curl

# Installing NodeJS
RUN     curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && \
        apt-get install -y nodejs
# Installing Angular cli and node modules in angular directory
RUN npm install -g @angular/cli 
CMD ng serve --host 0.0.0.0 --port 8080
EXPOSE 8080

