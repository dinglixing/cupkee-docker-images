FROM gcc:5.4

# add toolchain for ARM
ADD gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 /usr/local/bin/

ENV NODE_VERSION 6.10.0
ENV NPM_VERSION 3.10.8

# configure and make node and update npm
RUN groupadd -r cupkee && useradd -r -g cupkee cupkee && \
    cd /var/tmp && \
    curl -SLO "http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.tar.gz" && \
    curl -SLO "http://nodejs.org/dist/v${NODE_VERSION}/SHASUMS256.txt" && \
    grep "node-v${NODE_VERSION}.tar.gz\$" SHASUMS256.txt | sha256sum -c - && \
    tar -xzf "node-v${NODE_VERSION}.tar.gz" && \
    cd node-v${NODE_VERSION} && \
    ./configure && \
    make && \
    make install && \
    make clean && \
    cd ../ && \
    rm -rf "node-v${NODE_VERSION}" "node-v${NODE_VERSION}.tar.gz" SHASUMS256.txt && \
    npm i -g npm@"${NPM_VERSION}" && \
    npm cache clear && \
    npm i -g js-yaml

CMD ["node"]

