# kubernetes-demo

A simple Sinatra-based web application that simply echoes the value of the 
`KUBERNETES_DEMO_BUILD_TIME` environment variable. It is designed to demonstrate
the use of Docker and Kubernetes to deploy applications inside Docker 
containers.

## System Requirements

- Ruby v2.x

## Running the Application

```
$ scripts/bootstrap           # Install dependencies.
$ scripts/start               # Run the application with Puma.
