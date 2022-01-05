FROM ubuntu:18.04

MAINTAINER ybmsr <ybmadhu404@gmail.com>

WORKDIR /usr/apps/hello-docker/

RUN apt-get -y update

# RUN apt-get install -y nodejs

# RUN apt-get install -y npm

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

# RUN npm install -g http-server


ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html


RUN apt install nginx -y
RUN rm -rf /var/www/html/

ADD index.html /var/www/html/

#RUN service nginx status
#RUN service nginx start


CMD ["nginx", "-g", "daemon off;"]
#CMD ["service nginx start"]
