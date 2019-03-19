# Setting up your pi

- Install raspbian
- configure wifi
- configure keyboard layout english(US)
- open terminal

### Install visual studio code
In your terminal window, download and install visual studio code 

    wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - | sudo apt-key add -
    sudo apt install code-oss=1.29.0-1539702286
    sudo apt-mark hold code-oss
    
The latest version is buggy so we're not currently using the handy dandy installer. refer https://github.com/headmelted/codebuilds/issues/67#issuecomment-466255567

    curl -L https://code.headmelted.com/installers/apt.sh | sudo bash

### Install npm - armv7
In your terminal window, download and install the latest versin of node

    wget https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-armv7l.tar.xz
    ls
    tar -xf node-v10.15.0-linux-armv7l.tar.xz 
    cd node-v10.15.0-linux-armv7l/
    ls
    sudo cp -R * /usr/local/

    
### Install docker
In your terminal window, download and run the docker install and set user properties so you can run docker commands

    curl -sSL https://get.docker.com | sh
    sudo usermod -aG docker pi
    shutdown -r now


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
