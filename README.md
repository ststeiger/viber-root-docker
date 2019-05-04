
# viber-unoffical-root


## Installation: 
```
sudo apt-get install docker.io

```

## Build docker image:
```
docker build -t viber_root:0.1 .
```


## Run image:
```
xhost +
sudo docker run -it -e DISPLAY=unix$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged -t viber_root:0.1
```



## Remove Viber:
```
docker rmi viber_root:0.1 -f
```


## Create forever:
```
or create forever
sudo docker create \
        -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v /dev/snd:/dev/snd  \
        -v ~/.ViberPC:/home/gui/.ViberPC  \
        --privileged --name viber  -t viber_root:0.1
sudo docker start viber
```




### Original source:
```
https://github.com/ezbik/docker/tree/master/viber
```


### Open problems:
```
touch: cannot touch '/home/gui/.config/mimeapps.list': No such file or directory
/usr/bin/xdg-mime: 844: /usr/bin/xdg-mime: cannot create /home/gui/.config/mimeapps.list.new: Directory nonexistent

No browser installed, so viber cannot open a new browser window (intentional)
```


### Useful information:
```
https://askubuntu.com/questions/22031/what-are-my-audio-devices
aplay -l

https://www.digitalocean.com/community/tutorials/how-to-remove-docker-images-containers-and-volumes
https://stackoverflow.com/questions/18497688/run-a-docker-image-as-a-container
https://linuxize.com/post/how-to-remove-docker-images-containers-volumes-and-networks/
https://www.tutorialspoint.com/docker/building_docker_files.htm
https://docker-curriculum.com/
https://www.howtoforge.com/tutorial/how-to-create-docker-images-with-dockerfile/
```
