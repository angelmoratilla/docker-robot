# Babelong's docker java 8. Base on Ubuntu 18.04
----
### Pull from Docker Hub
```
docker pull angelmoratilla/robot:latest
```

### Build from GitHub
```
docker build -t angelmoratilla/robot github.com/angelmoratilla/docker-robot
```

### Run image
```
docker run -it angelmoratilla/robot bash
```

### Use as base image
```Dockerfile
FROM angelmoratilla/robot:latest
```


