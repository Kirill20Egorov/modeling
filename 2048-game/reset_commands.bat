rem Завершаем работу контейнера с именем 'first-container'
docker stop first-container

docker stop second-container

rem Удаляем контейнер с именем 'first-container'
docker rm first-container

docker rm second-container

rem Удаляем образ '2048-game-image'
docker image rm 2048-game-image