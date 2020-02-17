docker build -t 01 .
docker run --rm -d -p 25565:25565 01
