docker build . -t deb-py
docker rmi $(docker images --filter "dangling=true" -q --no-trunc) &> /dev/null
docker run -ti deb-py
