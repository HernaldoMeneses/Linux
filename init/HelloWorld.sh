#!/bin/bash
mensagem="Hello, World! \n Thats all folks.."

for ((i=0; i<${#mensagem}; i++)); do
	echo -n "${mensagem:i:i}"
	echo -e "${mensagem:1:i}"
	#sleep 1
done
#
echo "\n follow the whit rabit..."
