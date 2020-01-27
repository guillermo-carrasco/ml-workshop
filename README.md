# ml-workshop
Contents of the workshop "Introduction to Machine Learning" 

# Running in Docker
If you don't want to install all packages and dependencies required to run the exercises in this
workshop, I have created a Docker image that you can pull and run:

```
docker pull gcarrasco/ml:intro-workshop
docker run -p 8888:8888 gcarrasco/ml:intro-workshop
```

### Building and publishing the docker image
_NOTE: To be build an pushed into **my** Dokcer hub. Edit accordingly to use your hub.
 
* Build: `docker build . -t gcarrasco/ml:intro-workshop .`
* Push: `docker push gcarrasco/ml:intro-workshop`
* Pull: `docker pull gcarrasco/ml:intro-workshop``