FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3 ansible
RUN mkdir /ansible && useradd asg -d /ansible && chown asg:asg /ansible

WORKDIR /ansible
USER asg

CMD [ "30000" ]
ENTRYPOINT [ "sleep" ]
