# python-chromedriver-allure

Python with Chromedriver, for running automated tests

Quick Try:
$ git clone https://github.com/IanAlberto/python-chromedriver-allure
$ cd docker-python-chromedriver
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace joyzoursky/python-chromedriver:3.7 bash
/usr/wrokspace# pip install selenium
/usr/wrokspace# python test_script.py
Includes:
Python
Google Chrome
Chromedriver
Selenium (in some versions)
Xvfb (in some versions)