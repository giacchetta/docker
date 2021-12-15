docker-compose up --build --detach
docker-compose down -v
docker exec -t systemd-focal-1 docker stats
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' systemd-focal-1
