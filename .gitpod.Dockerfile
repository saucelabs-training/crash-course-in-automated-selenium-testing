FROM gitpod/workspace-full-vnc

USER gitpod

# Install Google Chrome
ARG CHROME_VERSION="google-chrome-stable"
RUN sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - \
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list \
  && sudo apt-get update -qqy \
  && sudo apt-get -qqy install \
    ${CHROME_VERSION:-google-chrome-stable} \
  && sudo rm /etc/apt/sources.list.d/google-chrome.list \
  && sudo rm -rf /var/lib/apt/lists/* /var/cache/apt/*

# Install ChromeDriver
ARG CHROME_DRIVER_VERSION
RUN if [ -z "$CHROME_DRIVER_VERSION" ]; \
  then CHROME_MAJOR_VERSION=$(google-chrome --version | sed -E "s/.* ([0-9]+)(\.[0-9]+){3}.*/\1/") \
    && CHROME_DRIVER_VERSION=$(sudo wget --no-verbose -O - "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_${CHROME_MAJOR_VERSION}"); \
  fi \
  && echo "Using chromedriver version: "$CHROME_DRIVER_VERSION \
  && sudo wget --no-verbose -O /tmp/chromedriver_linux64.zip https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip \
  && sudo rm -rf /opt/selenium/chromedriver \
  && sudo unzip /tmp/chromedriver_linux64.zip -d /opt/selenium \
  && sudo rm /tmp/chromedriver_linux64.zip \
  && sudo mv /opt/selenium/chromedriver /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
  && sudo chmod 755 /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
  && sudo ln -fs /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION /usr/bin/chromedriver