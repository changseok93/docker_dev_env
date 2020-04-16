#docker build script

# pre requirement : docker, nvidia-docker2, nvidia-driver >= 440

docker build -t ubuntu_dev_gpu:10.2 ./ubuntu_dev_gpu/10.2 &
docker build -t ubuntu_dev_gpu:10.1 ./ubuntu_dev_gpu/10.1 &
docker build -t ubuntu_dev_gpu:10.0 ./ubuntu_dev_gpu/10.0 &
docker build -t tensorflow:2.0 ./tensorflow/2.0 &
docker build -t tensorflow:2.1 ./tensorflow/2.1 &
docker build -t tensorflow:1.14 ./tensorflow/1.14 &
docker build -t pytorch:1.3 ./pytorch/1.3 &
docker build -t pytorch:1.1 ./pytorch/1.1 &
docker build -t pytorch:1.4 ./pytorch/1.4 &
docker build -t pytorch:1.2 ./pytorch/1.2 &
docker build -t ubuntu_dev:18.04 ./ubuntu_dev/18.04 &
docker build -t ubuntu_dev:16.04 ./ubuntu_dev/16.04 &

docker build -t detectron2_dev:stable ./detectron2/detectron2/docker &&
docker build -t detectron2_dev:v2 ./detectron2/
