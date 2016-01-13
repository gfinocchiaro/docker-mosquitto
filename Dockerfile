FROM ubuntu:14.04

RUN sudo apt-get install -y software-properties-common \
	&& sudo apt-add-repository ppa:mosquitto-dev/mosquitto-ppa \
	&& sudo apt-get update \
	&& sudo apt-get install -y mosquitto

EXPOSE 1883
ENTRYPOINT ["/usr/sbin/mosquitto"]
