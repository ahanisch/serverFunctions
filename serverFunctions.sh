#Documentation: https://github.com/ahanisch/serverFunctions
sf_HOST="xxxxx"
sf_USER="xxxxx"
sf_KEYFILE=""
sf_SSH_PORT="22"
sf_SYNCED_FOLDER="syncedFiles"


function sshToServer
{
	if [[ -z "$sf_KEYFILE" ]] ; then
		ssh $sf_USER@$sf_HOST -p$sf_SSH_PORT
	else
		ssh -i "$sf_KEYFILE" $sf_USER@$sf_HOST -p$sf_SSH_PORT
	fi
}

function ftpToServer
{
	sftp -oPort=$sf_SSH_PORT -i "$sf_KEYFILE" $sf_USER@$sf_HOST
}

function syncFile
{
	local remoteFile
	remoteFile="$1"
	[[ -z "$remoteFile" ]] && echo "First parameter must be the remote file" && return 1
	[[ ! -d "$sf_SYNCED_FOLDER" ]] && mkdir "$sf_SYNCED_FOLDER"
	rsync -RchavzP -e "ssh -i '$sf_KEYFILE' -p$sf_SSH_PORT" --stats "$sf_USER@$sf_HOST:$remoteFile" "$sf_SYNCED_FOLDER"
}

function gitAddRemote
{
	local repoDir remoteUrl
	repoDir="$1"
	[[ -z "$repoDir" ]] && echo "First parameter must be the path to the git repository, e.g. '~/git/MyProject.git'" && return 1
	remoteUrl="ssh://$sf_USER@$sf_HOST:$sf_SSH_PORT/$repoDir"
	echo "git remote add origin $remoteUrl"
	git remote add origin "$remoteUrl"
}
