FROM debian:latest

MAINTAINER aceofdiamonds

# show colors in the terminal and aliases
ADD my-bashrc /root/.bashrc

RUN apt-get update

# system tools
RUN apt-get install vim wget -y

# standard dev tools
RUN apt-get install git build-essential -y

# ui dev tools
RUN apt-get install umbrello pluma -y

# latex
RUN apt-get install texlive-full -y

# install netbeans
RUN apt-get install netbeans -y

# install atom
RUN wget 'https://atom.io/download/deb' -O /tmp/atom.deb -q
RUN apt-get install gconf2 libxss1 libxkbfile1 gvfs-bin -y
RUN dpkg -i /tmp/atom.deb
RUN rm -rf /tmp/atom.deb


CMD bash
