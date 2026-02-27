# 🐳 Docker-TTYD-Installer

> Launch a browser-based terminal on your localhost using [ttyd](https://github.com/tsl0922/ttyd) and Docker — no manual installs, just three files.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
![Shell](https://img.shields.io/badge/shell-bash-blue)
![Docker](https://img.shields.io/badge/docker-required-blue)

---

## What is ttyd?

[ttyd](https://github.com/tsl0922/ttyd) is a tool that shares your terminal over the web. Once running, you can access a fully functional bash shell from any browser — no SSH client needed.

This project uses a `Dockerfile` to install ttyd inside a container, and a `run.sh` script to build and start everything with a single command.

---

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) installed and running on your machine
- [Git](https://git-scm.com/install/) installed

---

## Security Notice

ttyd exposes a real bash shell over the network. **Do not expose port 7681 to the public internet.** This is intended for local use only. If you need remote access, make sure it's behind a firewall or VPN.

---

## License


This project is licensed under the [MIT License](LICENSE).
