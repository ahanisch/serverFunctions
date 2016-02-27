Usage
-----

 - `wget https://raw.githubusercontent.com/ahanisch/serverFunctions/master/serverFunctions.sh`
 - open the file `serverFunctions.sh` and set the following variables to configure the ssh connection:
 
 ```shellscript
    sf_HOST="xxxxx"    # ssh hostname
    sf_USER="xxxxx"    # ssh user
    sf_KEYFILE=""      # identity file
    sf_SSH_PORT="22"   # ssh port
    sf_SYNCED_FOLDER="syncedFiles"
```

- `source serverFunctions.sh` ([source operator](http://ss64.com/bash/source.html))
- then you can run one of the following functions from the terminal:
  - `sshToServer`
  - `ftpToServer`
  - `syncFile 'myBackendApplication/logs/main.log'`
  - `gitAddRemote '~/git/MyProject.git'`


Documentation
-------------

`sshToServer`

    login to server

`ftpToServer`

    login to server for file transfer

`syncFile $1`

    sync remote file or folder to local file system
    local folder is defined in variable sf_SYNCED_FOLDER (default: "syncedFiles")
    @param $1	file or path

`gitAddRemote $1`

    add an existing bare repository on server as remote to local git repository
    @param $1 repository folder on server, e.g. '~/git/MyProject.git'
