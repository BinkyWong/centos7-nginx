FROM centos:7

RUN yum -y install epel-release && yum -y install nginx

RUN yum install -y python-setuptools 

RUN easy_install pip 

RUN pip install supervisor 

ADD /contents /

RUN echo 'daemon off;' >> /etc/nginx/nginx.conf

CMD ["supervisord", "-n"]
