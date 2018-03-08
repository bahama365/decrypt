# Docker image for file decryption

A Docker one-shot container for file decryption with OpenSSL AES-256. Ensure you are in the directory of the chosen file. The who arguments for the container specify the input and outut file names.

docker run -it --rm -v $PWD:/data milobahg/decrypt:latest -in testfile.txt.enc -out testfile.txt
