docker build . -t kali-script
docker rmi $(docker images --filter "dangling=true" -q --no-trunc) &> /dev/null
docker run --rm -ti kali-script
