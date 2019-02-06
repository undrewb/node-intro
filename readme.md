# Node and Docker

- note that you could run the following steps on any platform with node and docker.
- for guidance on setting up a pi running rasbian to do this, please refer to [pi-config.md](pi-config.md)

1. create node app
    - create and populate package.json
    - run npm install
    - create and populate server.js
    - what is eslint? why do we use it?
    - lets make sure it all works.
    - run npm start and use your browser to go to http://0.0.0.0:8080/

2. Create docker image
    - create and populate Dockerfile
    -  create and populate .dockerignore
    - build docker image
            docker build -t undrewb/node-intro .
    - review docker images in local repository
        docker images
        docker ps

3. Run the docker image
    - run the image with docker run
        docker run -p 49160:8080 -d undrewb/node-intro
    - use docker ps to confirm its running
        docker ps

    Basic docker commands
        docker build - create a docker image and put it in the local registry
        docker start - run a docker image from the local image
        docker ps - show the currently running containers
        docker stop - stop a running container.
        docker images - show the images in the local registry

4. Update source code

    - edit server.js 
        res.send('Hello Hello\n');
    - docker build -t undrewb/node-intro .
    - docker ps
    - docker stop name_of_container
    - docker run -p 49160:8080 -d undrewb/node-intro
    - curl http://localhost:49160



## Troubleshooting
    - reboot after installing docker so the docker daemon starts
    - make sure youre in ~/projects/node-intro when you run the docker commands
    
## References & Future work

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

https://nodesource.com/blog/8-protips-to-start-killing-it-when-dockerizing-node-js/

https://stackoverflow.com/questions/38362533/docker-reload-a-nodejs-app-with-nodemon

https://medium.com/lucjuggery/docker-in-development-with-nodemon-d500366e74df
