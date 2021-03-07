#!/bin/sh

sudo yum -y update

sudo yum install -y epel-release

sudo yum install -y python3 gcc nginx git nano java-1.8.0-openjdk-devel

sudo systemctl start nginx

sudo systemctl enable nginx

curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo

sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

sudo yum install -y jenkins

sudo systemctl start jenkins

systemctl status jenkins

sudo systemctl enable jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword