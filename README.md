Usage
-----

 - `wget https://raw.githubusercontent.com/ahanisch/serverFunctions/master/serverFunctions.sh`
 - open the file `serverFunctions.sh` and set the following variables to configure the ssh connection:
 
 ```shellscript
    sf_HOST="xxxxx"    # ssh hostname
    sf_USER="xxxxx"    # ssh user
    sf_KEYFILE=""      # identity file
    sf_SSH_PORT="22"   # ssh port
```

- `source serverFunctions.sh`
- `sshToServer`
- `ftpToServer`
- `syncFile 'myApplication/logs/main.log'`
- `gitAddRemote 'git/MyProject.git'`


Documentation
-------------

`sshToServer`
    login to server

`ftpToServer`
    ftp to server

`syncFile`
    sync remote file or folder to local
    local folder is defined in variable sf_SYNCED_FOLDER
    @param $1	file or path

`gitAddRemote`
    add bare repository on server as remote to local git repository
    @param $1 repository dir on server, e.g. '~/git/MyProject.git'
