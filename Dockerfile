FROM ubuntu:latest

# Based on https://github.com/vdemeester/vcsh-home/blob/master/Dockerfile
RUN apt-get update && \
    apt-get -y install git curl wget zsh vcsh mr vim && \
    rm -fR /var/cache/apt

RUN useradd --shell /bin/zsh -u 1000 -m user

USER user

RUN vcsh clone https://github.com/memoselyk/mr_dotfiles.git config-mr

# Enable available repos for testing
RUN cd ~/.config/mr/config.d && ln -s ../available.d/vim.vcsh
RUN cd ~/.config/mr/config.d && ln -s ../available.d/git.vcsh
