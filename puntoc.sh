mkdir docker2parcial
cd docker2parcial/
mkdir appHomeBanking
cd appHomeBanking/
vim index.html
vim contacto.html
vim dockerfile
docker login -u fran139
docker build -t fran139/2parcial-ayso:v1.0 .
Docker image ls
docker push fran139/2parcial-ayso:v1.0
docker run -d -p 8080:80 fran139/2parcial-ayso:v1.0
docker container ls
