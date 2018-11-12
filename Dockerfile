FROM ubuntu:18.04

RUN apt update && apt install -y vsftpd ftp nano

RUN adduser --disabled-password user2

EXPOSE 21

ADD vsftpd.conf /etc/vsftpd.conf

CMD /usr/sbin/vsftpd
