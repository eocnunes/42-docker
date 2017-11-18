#SCRIPT FOR BACKING UP DOCKER IMAGE FILES

docker rmi $(docker images --filter "dangling=true" -q --no-trunc) &> /dev/null

echo "\033[1;37mCreating backup file...\033[0m"

mkdir -p ./backup_img

#backup images into .tar and create log
#(cd ./backup_img ; docker image save -o "imagesbackup_$(date +%Y-%m-%d)".tar $(docker images -q) \
#	&& docker images > "log_$(date +%Y-%m-%d)".txt)

#backup images into compressed .tar and create log
(cd ./backup_img ; docker image save $(docker images -q) | bzip2 > "imgbackup_$(date +%Y-%m-%d)".tar.bz2 \
	&& docker images > "log_$(date +%Y-%m-%d)".txt)

echo "\033[1;32mDone!\033[0m"

#TO LOAD:
#	$ bunzip2 [FILE].tar.bz2 
#	$ cat [FILE].tar | docker image load

#TO RENAME:
#	$ docker tag [IMAGE_ID]  [REPOSITORY]:[TAG]
