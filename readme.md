https://nodejs.org/en/docs/guides/nodejs-docker-webapp/
Guidance

https://nodejs.org/en/docs/guides/nodejs-docker-webapp/

https://nodesource.com/blog/8-protips-to-start-killing-it-when-dockerizing-node-js/


0. Setup the PI
    - git is already installed on PI.
    https://projects.raspberrypi.org/en/projects/getting-started-with-git
    - install vscode
    https://pimylifeup.com/raspberry-pi-visual-studio-code/
    - install node
    https://www.instructables.com/id/Install-Nodejs-and-Npm-on-Raspberry-Pi/
    - install docker https://www.raspberrypi.org/blog/docker-comes-to-raspberry-pi/
    
1. create node app
    - create and populate package.json
    - run npm install
    - create and populate server.js
    - what is eslint? why do we use it?
    - lets make sure it all works.
    - run npm start and use your browser to go to http://0.0.0.0:8080/

2. Create docker image
    - create and populate Dockerfile
    - create and populate .dockerignore
    - build docker image
    - review docker images in local repository

3. Run the docker image
    - run the image with docker run
    - use docker ps to confirm its running