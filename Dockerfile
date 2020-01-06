FROM joyzoursky/python-chromedriver

MAINTAINER Ian Linarez

COPY requirements.txt /

RUN pip install -r /requirements.txt

ENV ALLURE_VERSION 2.13.1

RUN wget -O allure-${ALLURE_VERSION}.zip https://dl.bintray.com/qameta/maven/io/qameta/allure/allure-commandline/${ALLURE_VERSION}/allure-commandline-${ALLURE_VERSION}.zip
RUN unzip allure-${ALLURE_VERSION}.zip
RUN rm allure-${ALLURE_VERSION}.zip

COPY . /src

WORKDIR /src

ENTRYPOINT [ "pytest" ]
CMD [ "--alluredir=src/reports" ] 
