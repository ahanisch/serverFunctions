Usage
-----

 - `git clone https://github.com/ahanisch/serverFunctions.git`
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
