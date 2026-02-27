FROM ubuntu:22.04

USER root
ENV DEBIAN_FRONTEND=noninteractive

# Install ttyd and clean up to keep image small
RUN apt-get update && apt-get install -y \
    ttyd \
    && rm -rf /var/lib/apt/lists/*

# Create a non-root user with UID 1000 (required by HuggingFace)
RUN useradd -m -u 1000 user && echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER user
WORKDIR /home/user

# Copy startup script into container
COPY --chown=user:user run.sh /home/user/run.sh
RUN chmod +x /home/user/run.sh

EXPOSE 7681

ENTRYPOINT ["/home/user/run.sh"]
