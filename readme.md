0. Setup the PI
    -   refer to pi-config.md for detailed steps

    - git is already installed on PI.
    https://projects.raspberrypi.org/en/projects/getting-started-with-git
    - get the project
    git clone https://github.com/undrewb/node-intro.git
    - install vscode
    https://pimylifeup.com/raspberry-pi-visual-studio-code/
    https://code.visualstudio.com/docs
    - install node - note that we're using node 10 so adjust accordingly
    https://www.instructables.com/id/Install-Nodejs-and-Npm-on-Raspberry-Pi/
    and             https://askubuntu.com/questions/92328/how-do-i-uncompress-a-tarball-that-uses-xz
    - install docker 
        https://www.raspberrypi.org/blog/docker-comes-to-raspberry-pi/
    
1. create node app
    - create and populate package.json
    - run npm install
    - create and populate server.js
    - what is eslint? why do we use it?
    - lets make sure it all works.
    - run the app
    ```
    npm start 
    ```
    and use your browser to go to http://0.0.0.0:8080/

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
    - view output using curl or via you browser
    ```
    curl http://localhost:49160
    ```
    - Basic docker commands
    ```
        docker build 
            create a docker image and put it in the local registry
        docker start
            run a docker image from the local image
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