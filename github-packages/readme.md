export GH_USERNAME='leocoolmitra'
export GH_TOKEN=''
export GH_IMAGE_NAME='hello world'
export GH_VER='1.0.0'

echo $GH_TOKEN | docker login ghcr.io -u $GH_USERNAME --password-stdin
docker tag hello-world:latest ghcr.io/leocoolmitra/hello-world:latest
docker push ghcr.io/leocoolmitra/hello-world:latest

LABEL org.opencontainers.image.source https://github.com/OWNER/REPO