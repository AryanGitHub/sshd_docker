Sure, here's a single `README.md` file containing all the instructions:

```markdown
# ubussh1

## Description
ubussh1 is a Dockerized SSH server for easy setup and deployment. This project provides instructions for building and running the Docker image, as well as connecting to the SSH server.

## Usage

### 1. Build Docker Image
Navigate to the project folder and build the Docker image using the following command:

```bash
sudo docker build -t ubussh1 .
```

### 2. Run the Docker Container
After building the Docker image, run the container with the following command:

```bash
sudo docker run -d -it -p 2222:22 ubussh1
```

This command maps port 2222 of the host machine to port 22 of the Docker container.

### 3. Connect to the SSH Server
Once the Docker container is running, you can connect to the SSH server using the following command:

```bash
ssh -v dockerSshUser@<ip-address> -p 2222
```

Replace `<ip-address>` with the IP address of the host machine where the Docker container is running.

### Note
- Make sure Docker is installed and running on your system before following these steps.
- You may need to adjust firewall settings to allow incoming connections to port 2222.
- Replace `dockerSshUser` with the appropriate SSH username configured in the Docker image.
```

This single `README.md` file contains all the necessary information for building, running, and connecting to the Dockerized SSH server. Feel free to use it as-is or modify it according to your needs!
