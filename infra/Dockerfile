FROM centos:7.2.1511

# node.js
RUN curl -sL https://rpm.nodesource.com/setup_12.x | bash -
RUN yum install -y nodejs

# yarn
RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | tee /etc/yum.repos.d/yarn.repo
RUN yum install -y yarn

# puppeteer
RUN yarn global add puppeteer@1.19.0

# chromium
RUN yum install -y pango.x86_64 \
  libXcomposite.x86_64 \
  libXcursor.x86_64 \
  libXdamage.x86_64 \
  libXext.x86_64 \
  libXi.x86_64 \
  libXtst.x86_64 \
  cups-libs.x86_64 \
  libXScrnSaver.x86_64 \
  libXrandr.x86_64 \
  GConf2.x86_64 \
  alsa-lib.x86_64 \
  atk.x86_64 \
  gtk3.x86_64 \
  ipa-gothic-fonts \
  xorg-x11-fonts-100dpi \
  xorg-x11-fonts-75dpi \
  xorg-x11-utils \
  xorg-x11-fonts-cyrillic \
  xorg-x11-fonts-Type1 \
  xorg-x11-fonts-misc

RUN yum update -y nss

# sandbox
WORKDIR /usr/local/share/.config/yarn/global/node_modules/puppeteer/.local-chromium/linux-674921/chrome-linux/
RUN chown root:root chrome_sandbox
RUN chmod 4755 chrome_sandbox
RUN cp -p chrome_sandbox /usr/local/sbin/chrome-devel-sandbox
WORKDIR /home/src

# lighthouse
RUN yarn global add lighthouse@5.2.0
ENV CHROME_PATH /usr/local/share/.config/yarn/global/node_modules/puppeteer/.local-chromium/linux-674921/chrome-linux/chrome
ENV CROME_DEVEL_SANDBOX /usr/local/sbin/chrome-devel-sandbox

# user
RUN useradd test
USER test
