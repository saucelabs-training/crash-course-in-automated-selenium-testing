FROM gitpod/workspace-full

# Installing Google Chrome Browser
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN sudo apt-get update \
 && sudo apt-get install -y ./google-chrome-stable_current_amd64.deb \
 && sudo rm -rf /var/lib/apt/lists/*
