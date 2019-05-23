FROM runmymind/docker-android-sdk:ubuntu-standalone

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
  && apt-get install -y nodejs bsdtar

RUN npm i -g ionic cordova

RUN wget -qO- https://services.gradle.org/distributions/gradle-3.4.1-bin.zip | bsdtar -xf- \
  && mv gradle-3.4.1 /opt/gradle && chmod +x /opt/gradle/bin/gradle

ENV PATH="/opt/gradle/bin:${PATH}"

CMD ['ionic']
