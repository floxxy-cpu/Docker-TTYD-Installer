FROM ubuntu:22.04

USER root
ENV DEBIAN_FRONTEND=noninteractive

# Install ttyd + sudo in one layer
RUN apt-get update && apt-get install -y \
    ttyd \
    sudo \
    && rm -rf /var/lib/apt/lists/*

# Create non-root user with UID 1000 (required by HuggingFace)
# Set root password to "root" so "su" works
# Give user full passwordless sudo
RUN useradd -m -u 1000 user \
    && echo "root:root" | chpasswd \
    && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
    && usermod -aG sudo user

USER user
WORKDIR /home/user

# Copy startup script into container
COPY --chown=user:user run.sh /home/user/run.sh
RUN chmod +x /home/user/run.sh

ENTRYPOINT ["/home/user/run.sh"]
