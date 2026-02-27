FROM ubuntu:22.04 

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y \
    && apt install -y \
       ttyd \
       && apt clean

EXPOSE 7681 

CMD ["ttyd", "-port", "7681", "--interface", "0.0.0.0", "bash"]
