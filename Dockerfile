FROM ubuntu:latest

RUN apt-get update && apt-get install nano
RUN apt-get install -y  bash
RUN apt-get install -y   zsh
RUN apt-get install -y   git
RUN apt install figlet
RUN useradd -ms /bin/bash user

USER user


COPY /.zsh/.zshrc /home/user/.zsh/.zshrc
COPY /.zsh/plugins/ /home/user/.zsh/plugins/
COPY /.zsh/.zsh_history     /home/user/.zsh/.zsh_history
COPY /.zsh/themes/ /home/user/.zsh/themes/
COPY /.zsh/spaceship-vi-mode/ /home/user/.zsh/spaceship-vi-mode/
COPY ./.zsh/.profile /home/user/.zsh/.profile
COPY /script.sh /

CMD ["zsh"]
