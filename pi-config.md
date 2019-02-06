# Setting up your pi

- Install raspbian
- configure wifi
- configure keyboard layout english(US)
- open terminal

### Get started

    pwd
    ls
    mkdir projects
    cd projects

### Clone git repo

    git config --global user.email your.email@host.com
    git config --global user.name "Your Name"
    git clone https://github.com/undrewb/node-intro.git

### Install visual studio code

    wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
    curl -L https://code.headmelted.com/installers/apt.sh | sudo bash

### Install npm - armv7

    wget https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-armv7l.tar.xz
    ls
    tar -xf node-v10.15.0-linux-armv7l.tar.xz 
    cd node-v10.15.0-linux-armv7l/
    ls
    sudo cp -R * /usr/local/
    cd ..
    node -v
    npm -v
    
### Install docker

    curl -sSL https://get.docker.com | sh
    sudo usermod -aG docker pi
    shutdown -r now

### Next
When you've rebooted, open a terminal and cd into ~/projects/node-intro. Make sure docker is available. You're now ready to return to the readme.md so you can build and run your application.
```
    cd ~/projects/node-intro
    docker ps
    docker images
```
### References
- get started with git
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