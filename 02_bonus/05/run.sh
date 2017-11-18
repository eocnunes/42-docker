docker build . -t pt-ubuntu
docker rmi $(docker images --filter "dangling=true" -q --no-trunc) &> /dev/null
echo "\033[1;31mUSAGE: python2.7 katoolin.py\033[0m"
docker run --rm -ti pt-ubuntu
