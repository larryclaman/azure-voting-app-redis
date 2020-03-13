regsite="azurecr.io"
reg="lncreg1"
name="voteapp"
file="Dockerfile-for-app-service"
docker build -f $file -t "$reg.$regsite/$name:v3" .


# docker login "$reg.$regsite" -u lncreg1 -p 
# az acr import -n lncreg1 --source  docker.io/tiangolo/uwsgi-nginx-flask:python3.6

docker push "$reg.$regsite/$name:v3"