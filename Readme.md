#Docker commands to build image and run

Build image
```
docker build -t <any-image-name> .
```

Run container
```
 docker run -p 8080:8080 -t <any-image-name>
```