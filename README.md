# Notes Application for DevOps Enthusiasts

The Notes Application is containerized using Docker and deployed on an AWS EC2 instance. Nginx is used as a reverse proxy to expose the application.

## Requirements

- Python 3.9
- Node.js
- React

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/Aayusha-Regmi/notes-application.git
```

### 2. Build the Application

```bash
docker build -t notes-app .
```

### 3. Run the Application

```bash
docker run -d -p 8000:8000 notes-app:latest
```

## Nginx

Install Nginx and configure it as a reverse proxy to make the application accessible.

```bash
sudo apt-get update
sudo apt install nginx
```