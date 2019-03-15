# ontology-docker
Dockerfile for ontology


# Building

```bash
docker build -t ontology .
```

# Running

```bash
# block dir
mkdir data
docker run --rm -itd --name iont -p 20336:20336 -v `pwd`/data:/opt/coin/data ontology
```

# Using pre-built docker image

Using automated build image from <https://hub.docker.com/r/mixhq//ontology>:

```bash
docker run --rm -itd --name iont -p 20336:20336 -v `pwd`/data:/opt/coin/data mixhq/ontology
```
