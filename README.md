# Simple Notes App ( Dockerized Deployment Project)

This project is a containerized full-stack Notes Application designed to demonstrate practical deployment skills using Docker and Nginx on a cloud virtual machine.The application runs as a multi-service system and is accessible through a reverse proxy setup, simulating a real-world production deployment environment.

## System Architecture

The application consists of the following components:

- Frontend (React)
- Backend Service (Python-based API)- 3.9 version
- Reverse Proxy (Nginx)
- Docker-based container runtime environment
- AWS EC2 instance for deployment

### Request Flow

Client → Nginx → Application Service → Backend API

---

## Prerequisites

Before running the project, ensure the following are installed:

- Docker
- Docker Compose
- Git
- AWS EC2 instance (for deployment use-case)

## Setup Instructions: 

### 1. Clone the Repository

```bash
git clone https://github.com/Aayusha-Regmi/notes-application.git
```

### 2. Build the Application

```bash
docker build -t notes-app .
```

### 3. Run the Application in the background 

```bash
docker compose up -d 
```

### 4. Verify running containers

```bash
docker ps
```

### 5. Check the logs

```bash
docker logs <container_id>
```

## Nginx Setup (Reverse Proxy)

Install Nginx and configure it as a reverse proxy to make the application accessible.

```bash
sudo apt-get update
sudo apt install nginx
```

### Basic Configuration file

The configuration file contains basic nginx setup named as default.conf

```bash
sudo nano /etc/nginx/sites-available/default
```

### Restart the Nginx

```bash
sudo systemctl restart nginx
```

## Access the application

1. Open browser
2. Visit
   ```
   http://<EC2_PUBLIC_IP>
   ```
