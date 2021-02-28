export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH


echo "Starting server '$NAME'"

# NOTE: Minimum password length is 5 characters & Password cant be in the server name.
# NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.
./valheim_server.x86_64 -name "$NAME" -port $PORT -world "$WORLD" -password "$PASSWORD" -savedir $SAVEDIR

export LD_LIBRARY_PATH=$templdpath