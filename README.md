Usage
-----

 - `wget https://raw.githubusercontent.com/ahanisch/serverFunctions/master/serverFunctions.sh`
 - Open the file `serverFunctions.sh` and set the following variables to configure the ssh connection:
 
 ```shellscript
    sf_HOST="xxxxx"    # ssh hostname
    sf_USER="xxxxx"    # ssh user
    sf_KEYFILE=""      # identity file
    sf_SSH_PORT="22"   # ssh port
    sf_SYNCED_FOLDER="syncedFiles"
```

- `source serverFunctions.sh` ([source operator](http://ss64.com/bash/source.html))
- Then you can run one of the following functions from the terminal (press TAB for autocomplete):
  - `sshToServer`
  - `ftpToServer`
  - `syncFile 'myBackendApplication/logs/main.log'`
  - `gitAddRemote '~/git/MyProject.git'`


Documentation
-------------

`sshToServer`

    Login to server.
    The ssh connection can be configured by the variables sf_HOST, sf_USER, sf_KEYFILE and sf_SSH_PORT (s.a.).

`ftpToServer`

    Login to server for easy file transfer.

`syncFile $1`

    Sync remote file or folder to local file system.
    The local folder is defined in variable sf_SYNCED_FOLDER (default: "syncedFiles").
    @param $1	file or path

`gitAddRemote $1`

    Add an existing bare repository on server as remote to local git repository.
    @param $1 repository folder on server, e.g. '~/git/MyProject.git'
