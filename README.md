api
===

Simple HTTP interface (with command line tool) for my home automation devices.

### Usage

The idea is to issue home automation commands to devices like iTach WF2IR, 
ISY-994i, or desktop computers via HTTP requests or command line.

#### HTTP:

`http://api.mycomputer.com/avr/volup`  
`http://api.mycomputer.com/lamp/on`  
`http://api.mycomputer.com/macpro/wake`

#### Command line:

`api avr volup`  
`api lamp on`  
`api macpro wake`

### Install

To install just the CLI tool, open a terminal and run this command:  

`curl https://raw.github.com/suderman/api/master/install.sh | sh`  

To install the server, you're better off cloning the repo into a
directory Apache/PHP can serve it from:

`git clone https://github.com/suderman/api.git`

### Configuration

Edit/rename/move/symlink the `api.example.yml` configuration file to `api.yml` and/or `~/.api`

The CLI tool (api) will look in the home dir for `.api` or the current dir for `api.yml` 
The web server `index.php` will look in it's own directory for `api.yml`

You should probably keep the real `api.yml` somewhere safe and then 
symlink it to the two locations it's expected to be found.

#### For example:

`ln -sfv ~/code/dotfiles-secure/pi/api.yml ~/.api`  
`ln -sfv ~/code/dotfiles-secure/pi/api.yml ~/code/api/api.yml`

### To Do:

 - Authentication
