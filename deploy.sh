echo "Repository update"
git pull origin develop

echo "Bulding and launching docker container"
ENV=develop docker-compose -f docker-compose.yml --env-file .env.develop up --build -d

echo "Active containers"
docker ps