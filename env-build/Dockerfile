FROM gcc:5.4

# ADD https://launchpad.net/gcc-arm-embedded/5.0/5-2016-q3-update/+download/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 /usr/local/bin/
ADD gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 /usr/local/bin/

COPY cupkee_utils /usr/local/bin/
COPY cupkee_docker_entrypoint.sh /usr/local/bin
ENTRYPOINT ["cupkee_docker_entrypoint.sh"]

RUN groupadd -r cupkee && useradd -r -g cupkee cupkee

VOLUME /home/cupkee/app
VOLUME /home/cupkee/platform

WORKDIR /home/cupkee
USER cupkee

CMD ["cupkee build"]

