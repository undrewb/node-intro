Install raspbian

configure wifi

configure keyboard layout english(US)

Open terminal

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

    wget https://packagecloud.io/headmelted/codebuilds/gpgkey -O - \| sudo apt-key add -
    curl -L https://code.headmelted.com/installers/apt.sh | sudo bash'

### Install npm - armv7

    wget https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-armv7l.tar.xz
    ls
    tar -xf node-v10.15.0-linux-armv7l.tar.gz 
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