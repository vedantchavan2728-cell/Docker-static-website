# 🚀 Static Website Deployment using Docker & Docker Compose

## 📌 Project Overview

This project demonstrates how to containerize and deploy a static website using **Docker and Docker Compose**. The website is served using an Nginx web server running inside a Docker container.

The project focuses on containerization, port mapping, Docker image creation, and simplified application deployment using Docker Compose.

## 🛠️ Technologies Used

- **Docker** – Application containerization
- **Docker Compose** – Container lifecycle and deployment management
- **Nginx** – Web server for serving static website content
- **HTML & CSS** – Website development
- **Linux** – Deployment environment

## 🏗️ Architecture

```text
          User / Web Browser
                  |
                  | HTTP Request
                  v
           Host Port (8080)
                  |
                  v
          Docker Container
                  |
                  v
             Nginx Server
                  |
                  v
          Static Website
             (HTML/CSS)
```

## ✨ Key Features

- Containerized static website using Docker.
- Configured Nginx to serve website files.
- Created a custom Docker image using a Dockerfile.
- Used Docker Compose to simplify container deployment.
- Configured port mapping to access the website through a browser.
- Implemented a reproducible deployment workflow.
- Practiced container management and troubleshooting.

## 📂 Project Structure

```text
static-website-deployment/
├── index.html
├── style.css
├── Dockerfile
├── docker-compose.yml
└── README.md
```

*Note: Update the folder structure according to your actual repository files.*

## ⚙️ Installation & Deployment

### 1. Clone the Repository

```bash
git clone <YOUR_GITHUB_REPOSITORY_URL>
cd static-website-deployment
```

### 2. Build the Docker Image

```bash
docker build -t static-website .
```

### 3. Run Using Docker Compose

```bash
docker compose up -d --build
```

### 4. Verify the Running Container

```bash
docker ps
```

### 5. Access the Website

Open your browser and visit:

```text
http://localhost:8080
```

Make sure your Docker configuration maps host port `8080` to container port `80`. If you configured a different port, use that port in the browser.

## 🐳 Dockerfile

Example Dockerfile:

```dockerfile
FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80
```

## 📝 Docker Compose Configuration

Example `docker-compose.yml`:

```yaml
services:
  web:
    build: .
    container_name: static-website
    ports:
      - "8080:80"
    restart
