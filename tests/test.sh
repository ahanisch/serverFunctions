source serverFunctions.sh

cd tests
vagrant up
cd ..

sf_HOST="127.0.0.1"
sf_USER="vagrant"
sf_KEYFILE=""
sf_SSH_PORT="2233"

echo "Test ssh ..."
echo "echo 'It works'" | sshToServer
echo "Test sftp ..."
echo "ls " | ftpToServer

# Key

echo "Now test with key ..."
sf_KEYFILE="tests/id_rsa"

echo "Test ssh ..."
echo "echo 'It works'" | sshToServer
echo "Test sftp ..."
echo "ls " | ftpToServer

cd tests
vagrant halt
cd ..