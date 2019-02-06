
- note that you could run the following steps on any platform with node and docker.
- for guidance on setting up a pi running rasbian to do this, please refer to pi-config.md

1. Create node app
    - If you cloned the github project, the files are already available and you can just review them.
    ```
    cd ~/projects/node-intro
    code-oss .
    ```
    - create and populate package.json
    - run npm install from terminal to get dependencies specified in package.json
    ```
    npm install
    ```
    - create and populate server.js with some code. In package.json we specify server.js as the start point for running our program.
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
    - create and populate .dockerignore
    - Check the available images in your local registry. If you've just installed docker, there will be no local images yet.
    ``` 
    docker images
    ```
    - When you build the docker image it takes instructions from the Dockerfile. Of note is the FROM instruction which tells docker to download a node v10 ready image from the docker image registry. The first time you do this, it will take some time as the image must be downloaded from docker.com. Subsequent builds will be faster as the downloaded image is installed in the local image registry.
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
    - Build and restart the docker image. Notice the build is much faster this time because the node v10 image is already downloaded.
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
