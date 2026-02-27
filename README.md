# 🐳 Docker-TTYD-Installer

> Launch a browser-based terminal on your localhost using [ttyd](https://github.com/tsl0922/ttyd) and Docker — no manual installs, just two files.

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

## How to use

**1. Clone the repository**

```bash
git clone https://github.com/floxxy-cpu/Docker-TTYD-Installer.git
cd Docker-TTYD-Installer
```

**2. Make the script executable**

```bash
chmod +x run.sh
```

**3. Run it**

```bash
./run.sh
```

The script will automatically build the Docker image and start the container.

**4. Open your browser**

```
http://localhost:7681
```

You'll see a live bash terminal running in your browser.

---

## Stopping the Container

To stop it:

```bash
docker stop floxxy-ttyd
```

To fully remove it:

```bash
docker rm floxxy-ttyd
```

---

## File Structure

```
Docker-TTYD-Installer/
├── Dockerfile   # Defines the image: installs ttyd on Ubuntu
├── run.sh       # Builds the image and starts the container
└── README.md    # You are here
```

---

## Security Notice

ttyd exposes a real bash shell over the network. **Do not expose port 7681 to the public internet.** This is intended for local use only. If you need remote access, make sure it's behind a firewall or VPN.

---

## License

This project is licensed under the [MIT License](LICENSE).