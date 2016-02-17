Usage
-----

 - `git clone https://github.com/ahanisch/serverFunctions.git`
 - open the file `serverFunctions.sh` and set the following variables to configure the ssh connection:
 
 ```shellscript
    sf_HOST="xxxxx"
    sf_USER="xxxxx"
    sf_KEYFILE=""
    sf_SSH_PORT="22"
```

- `source serverFunctions.sh`
- `sshToServer`
- `ftpToServer`
