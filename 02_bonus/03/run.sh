docker build . -t web-pen
docker rmi $(docker images --filter "dangling=true" -q --no-trunc) &> /dev/null
docker run --rm -ti web-pen
