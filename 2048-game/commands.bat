rem Создаем образ с именем '2048-game-image' на основе нашего Dockerfile
docker build -t 2048-game-image .

rem Запускаем контейнер с именем 'first-container' на основе нашего образа выше, прослушиваем 8080 порт
docker run -p 8080:8080 --name first-container 2048-game-image

rem Запускаем второй контейнер с именем 'second-container' на основе нашего образа выше, прослушиваем 3000 порт
docker run -p 3000:8080 --name second-container 2048-game-image

rem Выводим список запущенных контейнеров
docker ps

rem Выводим наши образы
docker images

rem Завершаем работу контейнера с именем 'first-container'
docker stop first-container

docker stop second-container

rem Удаляем контейнер с именем 'first-container'
docker rm first-container

docker rm second-container

rem Удаляем образ '2048-game-image'
docker image rm 2048-game-image

