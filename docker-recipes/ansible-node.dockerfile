FROM ubuntu:bionic
RUN apt-get update && apt-get install -y curl software-properties-common
RUN apt-add-repository --yes --update ppa:ansible/ansible
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y ansible nodejs
