sudo docker ps -a -q --filter "name=app" | grep -q . && docker stop app && docker rm app | true

sudo docker rmi ohsesol/crab-coding-spring

sudo docker pull ohsesol/crab-coding-spring

docker run -d -p 8080:8080 --env-file=env_list.txt --name app ohsesol/crab-coding-spring

docker rmi -f $(docker images -f "dangling=true" -q) || true