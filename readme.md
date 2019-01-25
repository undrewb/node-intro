0. Setup the PI
    - refer to pi-config.md for detailed steps
    - these instructions assume 
        1. you've got your pi running rasbian 
            - https://www.raspberrypi.org/documentation/configuration/
        2. you're familiar with basic unic unix commands
            - https://www.raspberrypi.org/documentation/linux/usage/commands.md 
        3. You're ready to use git
            - https://projects.raspberrypi.org/en/projects/getting-started-with-git
        4. You're cool with visual studio code. You're free to use any other editor if you prefer.
            -  https://code.visualstudio.com/docs

 
1. Create node app
    - create and populate package.json
    - run npm install
    - create and populate server.js
    - what is eslint? why do we use it?
    - lets make sure it all works.
    - run the app
    ```
    npm start 
    ```
        - view output using curl or via you browser http://localhost:8080
    ```
    curl http://localhost:8080
    ```

2. Create docker image
    - create and populate Dockerfile
    -  create and populate .dockerignore
    - build docker image
    ```
    docker build -t undrewb/node-intro .

    docker images
    docker ps
3. Run the docker image
    - run the image with docker run 
    ```
        docker run -p 49160:8080 -d undrewb/node-intro
    ```
    - use docker ps to confirm its running
    ```
        docker ps
    ```
    - view output using curl or via you browser http://localhost:49160
    ```
    curl http://localhost:49160
    ```
    - Basic docker commands
    ```
        docker build 
            create a docker image and put it in the local registry
        docker start
            run a docker image from the local registry
        docker ps
            show the currently running containers
        docker stop 
            stop a running container.
        docker images 
            show the images in the local registry
4. Update source code

    - edit server.js 
        res.send('Hello Hello\n');
    - build and restart the docker image
    ```
        docker build -t undrewb/node-intro .
        docker ps
        docker stop name_of_container
        docker run -p 49160:8080 -d undrewb/node-intro
        curl http://localhost:49160
## Troubleshooting
    - reboot after installing docker so the docker daemon starts
    - make sure youre in ~/projects/node-intro when you run the docker commands
    
## References & Future work

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

https://nodesource.com/blog/8-protips-to-start-killing-it-when-dockerizing-node-js/

https://stackoverflow.com/questions/38362533/docker-reload-a-nodejs-app-with-nodemon

https://medium.com/lucjuggery/docker-in-development-with-nodemon-d500366e74df