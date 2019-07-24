# De quoi avons nous besoins ?`

- Docker

## comment faire l'installation ?`

```sh
git clone https://github.com/JoEdjamf/Devops.git

## comment executer le project ? `

```sh
# pour un demarrage rapide lance l' exe.sh
sh ./exe.sh
```

```sh
# ou executer du container

docker-compose up -d
```

## execution des tests avec phpunit

```sh
# une fois le container lancé

docker-compose exec -T php phpunit test.php
```
