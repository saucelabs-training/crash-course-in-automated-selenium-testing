FROM gitpod/workspace-full

# Install Google Chrome Browser
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
	&& sudo apt-get update \
    && sudo apt-get install -y ./google-chrome-stable_current_amd64.deb \
    && rm -rf /var/lib/apt/lists/*