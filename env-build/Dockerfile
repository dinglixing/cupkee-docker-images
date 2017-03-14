FROM cupkee/env-base:latest

COPY cupkee_utils /usr/local/bin/
COPY cupkee_docker_entrypoint.sh /usr/local/bin
ENTRYPOINT ["cupkee_docker_entrypoint.sh"]

VOLUME /home/cupkee/app
VOLUME /home/cupkee/platform

WORKDIR /home/cupkee/platform
USER cupkee

CMD ["cupkee build"]

