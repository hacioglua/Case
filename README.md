# Vue.js Documentation Site with Docker, Nginx, and SSL

This project is a Dockerized version of the Vue.js documentation site, cloned from the [official repository](https://github.com/vuejs/v2.vuejs.org). The platform configuration includes Nginx with SSL for secure access.

![](/case-diagram.png)

## Setup

1. **Clone the Repository**

   Clone this repository to your local machine:

   ```bash
   git clone https://github.com/hacioglua/Case
   cd Case
   ```
2. **Run the Setup Script**

    **Grant Execute Permissions:** Before running the setup scripts, make sure to grant execute permissions. You can do this with the following commands:

    ```bash
    chmod +x setup-linux.sh # for linux operating system such as Ubuntu 22.04 LTS
    chmod +x setup.sh # for MacOS operating system
    ```

Execute the following command to install Docker, Docker Compose, and start the Docker service according to your operating system:

### For MacOS
 ```bash
   ./setup.sh
   ```

### For Linux

 ```bash
   ./setup-linux.sh
   ```
These scripts will check for Docker and Docker Compose, install them if necessary, and start the Docker service.

3. **Access the Site**

Once the setup is complete, the Vue.js documentation site will be accessible at https://localhost:4000. The site is intended to be secured using SSL with self-signed certificates generated during the setup. However, due to a configuration oversight, SSL might not be enabled. If you encounter any issues with accessing the site securely, you may need to verify the SSL configuration or generate new self-signed certificates.

![](/safari-ssl.png)

## Project Structure

**nginx.conf:** The Nginx configuration file, which includes SSL settings and reverse proxy configuration to forward requests to the Vue.js application running inside the Docker container.

**docker-compose.yml:** Docker Compose file that sets up the necessary services, including Nginx and the Vue.js application.

**server.crt and server.key:** Self-signed SSL certificate and key used to secure the site.

## Troubleshooting
* If Docker is not installed, the setup script will attempt to install it. Ensure you have the necessary permissions or run the script with sudo if required.
* If the Vue.js site does not load, check the Docker container logs with docker-compose logs for any errors.

## Note 
I had some trouble running `try-setup-linux.sh` on AWS EC2, so I decided to skip it for now. However, the `setup-linux.sh` script works perfectly, creating images and containers as expected. I’m still including `try-setup-linux.sh` in case it's useful.

---
### THANK YOU
