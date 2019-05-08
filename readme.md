# Node and Docker
- bookmark this page, or drag this link http://github.com/undrewb/node-intro to your desktop. this will make it easy to return if you need to reboot.
- note that you could run the following steps on any platform with node and docker.
- for guidance on setting up a pi running rasbian to do this, please refer to [pi-config.md](pi-config.md)
- After making any change to a file in visual studio code, press ctrl-s to save the change.
## Initial project set up
### Get started
In your terminal window, create a projects directory in which to work

    cd
    ls
    mkdir projects
    ls
    cd projects
    ls
### Clone git repo
In your terminal window, setup git and get the project

    git config --global user.email your.email@host.com
    git config --global user.name "Your Name"
    git clone https://github.com/undrewb/node-intro.git
    ls
### Get ready to go
In your terminal window, go to project folder

    cd ~/projects/node-intro
Make sure node is installed

    node -v
    npm -v
Make sure docker is available

    docker ps
    docker images

Run visual studio code

    code-oss .
## Create node app
In visual studio code
- create and populate package.json

In terminal window
- download node dependencies.
    ```
    npm install
    ```
In visual studio code     
- create and populate server.js

Lets make sure it all works. In terminal window
- start your application
    ```
    npm start 
    ```
In the web browser navigate to http://0.0.0.0:8080/

## Create docker image
In visual studio code
- create and populate Dockerfile
- create and populate .dockerignore

In terminal window
- build docker image
    ```
    docker build -t pilab/node-intro-img .
    ```
- review docker images in local registry
    ```
    docker images
    docker ps
    ```
## Run the docker image
In terminal window
- run the image with docker 
    ```
    docker run -p 49160:8080 -d pilab/node-intro-img
    ```
- confirm its running
    ```
    docker ps
    ```
#### Basic docker commands
        docker build - create a docker image and put it in the local registry
        docker start - run a docker image from the local image
        docker ps - show the currently running containers
        docker stop - stop a running container.
        docker images - show the images in the local registry
        docker system prune - remove old container and images
        docker image rm <image id> - remove image from registry
        
## Update source code

In visual studio code
- edit server.js 
    ```
    res.send('Hello Hello\n');
    ```

In terminal window
- rebuild the container
    ```
    docker build -t pilab/node-intro-img .
    ```
- restart the container
    ```
    docker ps
    docker stop <name_of_container>
    docker run -p 49160:8080 -d pilab/node-intro-img
    curl http://localhost:49160
    ```


## Troubleshooting
- reboot after installing docker so the docker daemon starts
- make sure you're in ~/projects/node-intro when you run the docker commands
- make sure you saved your changes after editting files.
    
## References & Future work

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

https://nodesource.com/blog/8-protips-to-start-killing-it-when-dockerizing-node-js/

https://stackoverflow.com/questions/38362533/docker-reload-a-nodejs-app-with-nodemon

https://medium.com/lucjuggery/docker-in-development-with-nodemon-d500366e74df
