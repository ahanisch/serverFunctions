sf_HOST="xxxxx"
sf_USER="xxxxx"
sf_KEYFILE=""
sf_SSH_PORT="22"

function sshToServer
{
	ssh -i "$sf_KEYFILE" $sf_USER@$sf_HOST -p$sf_SSH_PORT
}

function ftpToServer
{
	sftp -oPort=$sf_SSH_PORT -i "$sf_KEYFILE" $sf_USER@$sf_HOST
}
