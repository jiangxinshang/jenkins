FROM docker.io/aoqi/loongson-openjdk-loongnix:latest

#添加jenkins程序包到镜像的根目录下
ADD jenkins.war /

ADD jenkins_start.sh /


#安装所需软件
RUN  chmod a+x /jenkins_start.sh    

RUN  echo 'nohup sh /jenkins_start.sh &' >> /root/.bash_profile    
                    
#设置容器对外端口
EXPOSE 8080

EXPOSE 80

EXPOSE 50000

# overwrite this with 'CMD []' in a dependent Dockerfile
CMD ["/bin/bash"]
