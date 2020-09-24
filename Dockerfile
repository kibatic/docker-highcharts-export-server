FROM node:14.10.1

ENV ACCEPT_HIGHCHARTS_LICENSE="YES"
RUN npm install highcharts-export-server -g --unsafe-perm
ADD fonts/* /usr/share/fonts/truetype/

WORKDIR /

EXPOSE 80
ENTRYPOINT ["highcharts-export-server", "--enableServer", "1", "--port", "80"]

