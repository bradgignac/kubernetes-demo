# kubernetes-demo

A simple Sinatra-based web application designed to demonstrate the use of Docker 
and Kubernetes to deploy applications inside Docker containers. The server 
simply returns the response of the `version.text` file located at the top-level
of the application directory. This file is auto-generated when the Docker 
image is built, so it easy to determine when the running container was built.

## System Requirements

- Docker v1.x
- Ruby v2.x

## Running Locally

```
$ scripts/bootstrap           # Install Gem dependencies.
$ scripts/version             # Write a version.txt file.
$ scripts/start-server        # Run the application with Puma.
```

See the running application by visiting `http://localhost:8000` in your browser.

## Running Inside Docker

```
$ scripts/build-container     # Build a Docker image from the Dockerfile.
$ scripts/start-container     # Run the Docker image in foreground mode.
```

For Linux users running Docker directly on your host machine, see the running
application by visiting `http://localhost:8000`. For Mac users running Docker 
through boot2docker, see the running application by visiting 
`http://192.168.59.103`. The final URL is subject to change based on exactly
how Docker in configured on your host.
