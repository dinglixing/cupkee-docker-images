#!/usr/bin/env sh

chmod a+x env-build/cupkee_utils/*

# env-build image build
docker build -t env-build:0.07 ./env-build

# env-devel image build

