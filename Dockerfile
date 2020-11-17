FROM ubuntu:20.04

RUN apt update && \
	apt install -y curl vim zsh git python3.9-venv wget && \
	curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh && \
	curl -L git.io/antigen >> ~/.zshrc

WORKDIR /stand
COPY ./.zshrc /root/.zshrc
ADD plugins /root/.oh-my-zsh/custom/plugins
CMD zsh
