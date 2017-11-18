docker build . -t deb-c
docker rmi $(docker images --filter "dangling=true" -q --no-trunc) &> /dev/null
docker run -ti deb-c
