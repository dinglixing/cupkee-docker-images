#!/usr/bin/env sh

# env-build image build
# docker build -t cupkee/env-base:1.00 ./env-base

# env-build image build
#chmod a+x env-build/cupkee_utils/*
docker build -t cupkee/env-build:0.11 ./env-build

# env-devel image build

