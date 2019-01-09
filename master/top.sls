docker-ce.repo:
    pkgrepo.managed:
        - humanname: docker
        - baseurl: https://download.docker.com/linux/centos/7/source/stable
        - file: /etc/yum.repos.d/docker-ce.repo
dependencies:
    pkg.installed:
        - name: java
        - name: yum-utils
        - name: device-mapper-persistent-data
        - name: lvm2
docker_ce:
    pkg.installed:
        - name: docker
    service:
        - name: docker
        - running
        - watch:
            - pkg: docker
jenkins_ppa:
    pkgrepo.managed:
        - humanname: Jenkins
        - baseurl: http://pkg.jenkins.io/redhat
        - file: /etc/yum.repos.d/jenkins.repo
        - gpgcheck: 0
        - key_url: http://pkg.jenkins.io/redhat/jenkins.io.key
        - require_in:
            - pkg: jenkins
jre:
    pkg.installed:
        - name: java
        - version: 1.8.0-openjdk
jenkins:
    pkg.installed:
        - name: jenkins
    user.present:
        - fullname: Jenkins Jones
        - shell: /bin/sh
        - groups:
            - wheel
    file.append:
        - name: /etc/sudoers
        - text:
          - "jenkins    ALL=(ALL)    NOPASSWD: ALL"
          - "%wheel        ALL=(ALL)       NOPASSWD: ALL" 
    service:
        - name: jenkins
        - running
        - watch:
            - pkg: jenkins
