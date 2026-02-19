# Dockerfile-static-website
📦 Static Website Deployment using Docker
📌 Project Overview

This project demonstrates how to:

Create a Dockerfile for a static website

Build a custom Docker image

Run a container exposing port 80

Serve static HTML using Nginx

This is a fundamental DevOps task showing understanding of:

Docker images

Containers

Port mapping

Image building

Web server containerization

🧱 Project Structure
static-docker-site/
│
├── Dockerfile
├── index.html
└── README.md

🌐 Technologies Used

Docker

Nginx

HTML (Static Website)

🐳 Step 1: Create index.html

Create a simple static webpage.

<!DOCTYPE html>
<html>
<head>
    <title>Docker Static Site</title>
</head>
<body>
    <h1>Hello from Docker 🚀</h1>
    <p>This static website is running inside a Docker container.</p>
</body>
</html>

🐳 Step 2: Create Dockerfile
# Use official nginx image as base
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy static website files into nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]

🧠 Dockerfile Explanation
FROM nginx:alpine

Uses lightweight Alpine-based nginx image

Smaller size → faster build & deployment

COPY

Copies static website into nginx root directory

EXPOSE 80

Documents that container listens on port 80

CMD

Starts nginx in foreground

Required for container to keep running

🏗 Step 3: Build Docker Image
docker build -t static-site .

What this does:

Reads Dockerfile

Creates image layer by layer

Tags image as static-site

Verify image:

docker images

🚀 Step 4: Run Container on Port 80
docker run -d --name mysite -p 80:80 static-site

Explanation:
Option	Meaning
-d	Run in background
--name mysite	Name container
-p 80:80	Map host port 80 → container port 80
🌐 Step 5: Access Website

Open browser:

http://localhost


You should see:

Example Output
4
🔍 Verify Container
docker ps
docker logs mysite
docker inspect mysite

🧹 Stop & Remove Container
docker stop mysite
docker rm mysite

🎯 Key Learning Outcomes

Understanding Dockerfile instructions

Building custom Docker images

Running containers with port mapping

Serving static content via nginx

Basic container debugging

🚀 Future Improvements

Add CSS styling

Use docker-compose

Add volume mounting

Deploy to cloud VM

Push image to Docker Hub

If you want, I can now:

Upgrade this README to resume-level polished version

Help you push this to GitHub professionally

Add CI/CD pipeline using GitHub Actions

Tell me your goal 🚀

give it in such a way that i could use it in git hub

Perfect 👌
I’ll give you a clean, professional GitHub-ready README.md — structured, markdown formatted, and interview-friendly.

You can copy-paste this directly into your README.md.

🚀 Static Website Deployment Using Docker
📌 Project Description

This project demonstrates how to containerize a static website using Docker and serve it using Nginx.

It covers:

Creating a Dockerfile

Building a custom Docker image

Running a container on port 80

Serving static HTML content

This project is ideal for beginners starting a DevOps journey.

🧱 Project Structure
static-docker-site/
│
├── Dockerfile
├── index.html
└── README.md

🛠 Technologies Used

Docker

Nginx (Alpine-based image)

HTML

📄 Step 1: Create Static Website

Create a file named index.html:

<!DOCTYPE html>
<html>
<head>
    <title>Docker Static Site</title>
</head>
<body>
    <h1>Hello from Docker 🚀</h1>
    <p>This website is running inside a Docker container.</p>
</body>
</html>

🐳 Step 2: Create Dockerfile

Create a file named Dockerfile:

# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy static website into nginx directory
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

🏗 Step 3: Build Docker Image

From the project directory:

docker build -t static-site .


Verify image creation:

docker images

🚀 Step 4: Run Container on Port 80
docker run -d --name mysite -p 80:80 static-site


Verify running container:

docker ps

🌐 Step 5: Access the Website

Open your browser and visit:

http://localhost


You should see your static webpage served by Nginx.

🔍 Useful Debug Commands

View logs:

docker logs mysite


Inspect container details:

docker inspect mysite


Check resource usage:

docker stats

🧹 Stop & Remove Container
docker stop mysite
docker rm mysite

📚 Key Concepts Demonstrated

Dockerfile instructions

Image building

Port mapping

Container lifecycle management

Serving static content inside a container
