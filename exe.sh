clear
printf '\n\e[1;20m%-6s\e[m\n\n\n\n\n' "  construction du container"
docker-compose build

clear
printf '\n\e[1;20m%-6s\e[m\n\n\n\n\n' " execution du docker compose "
docker-compose up -d

clear
printf '\n\e[1;20m%-6s\e[m\n\n\n\n\n' " execution des tests "
docker-compose exec -T php phpunit test.php

clear
printf '\n\e[1;20m%-6s\e[m\n\n\n\n\n' " test de l'Application : http://localhost:8080/ "

printf '\n\e[1;20m%-6s\e[m\n\n\n\n\n' " appuyer la touche entrer pour arreter l'execution "

read p

clear
docker-compose down
printf '\n\e[1;20m%-6s\e[m\n\n\n\n\n' "  arret du container "
