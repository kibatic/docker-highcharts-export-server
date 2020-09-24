FROM node:14.10.1

ENV ACCEPT_HIGHCHARTS_LICENSE="YES"
RUN npm install highcharts-export-server -g --unsafe-perm

WORKDIR /usr/share/fonts/truetype
ADD docker/highcharts/fonts/OpenSans-Regular.ttf OpenSans-Regular.ttf
ADD docker/highcharts/fonts/OpenSans-Light.ttf OpenSans-Light.ttf
ADD docker/highcharts/fonts/OpenSans-Semibold.ttf OpenSans-Semibold.ttf
ADD docker/highcharts/fonts/OpenSans-Bold.ttf OpenSans-Bold.ttf
ADD docker/highcharts/fonts/OpenSans-ExtraBold.ttf OpenSans-ExtraBold.ttf
ADD docker/highcharts/fonts/OpenSans-Italic.ttf OpenSans-Italic.ttf
ADD docker/highcharts/fonts/OpenSans-LightItalic.ttf OpenSans-LightItalic.ttf
ADD docker/highcharts/fonts/OpenSans-BoldItalic.ttf OpenSans-BoldItalic.ttf
ADD docker/highcharts/fonts/OpenSans-SemiboldItalic.ttf OpenSans-SemiboldItalic.ttf
ADD docker/highcharts/fonts/OpenSans-ExtraBoldItalic.ttf OpenSans-ExtraBoldItalic.ttf

WORKDIR /

EXPOSE 80
ENTRYPOINT ["highcharts-export-server", "--enableServer", "1", "--port", "80"]

