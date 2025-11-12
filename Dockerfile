# Stage 1: Use an official Nginx web server image as the base.
# 'nginx:1.25-alpine' is a lightweight version, which is great for production.
FROM nginx:1.25-alpine

# Stage 2: Copy the website's content into the web server's public directory.
# The source is './index.html' from our project.
# The destination is '/usr/share/nginx/html/index.html' inside the container. This is where Nginx looks for files.
COPY ./index.html /usr/share/nginx/html/index.html

# Stage 3: (Documentation) Let Docker know that the container listens on port 80.
EXPOSE 80