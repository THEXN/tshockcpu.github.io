---
title: Docker设置
tags: []
id: '1018'
categories:
  - - uncategorized
date: 2023-11-10 13:44:26
---

为了在 Docker 容器中运行 TShock，您需要有以下挂载点：

*   `/tshock`（TShock 配置文件、日志和崩溃报告）
*   `/worlds`
*   `/plugins`
*   `/server`（可选，如果您想要挂载 TShock 的当前工作目录）

可以使用 `-v <host_folder>:<container>` 将这些文件夹挂载到容器中

通过 `-p <host_port>:<container_port>` 将这些文件夹挂载到容器中

*   `7777` 用于 Terraria
*   `7878` 用于 TShock 的 REST API

例如:

\# Building the image
docker build -t tshock:linux-amd64 --build-arg TARGETPLATFORM=linux/amd64 .

# Running the image
docker run -p 7777:7777 -p 7878:7878 \\
           -v /home/cider/tshock/:/tshock \\
           -v /home/cider/.local/share/Terraria/Worlds:/worlds \\
           -v /home/cider/tshock/plugins:/plugins \\
           --rm -it tshock:linux-amd64 \\
           -world /worlds/backflip.wld -motd "OMFG DOCKER"

## 为其他平台构建

使用 `docker buildx`，您可以为 TShock 构建[多平台镜像](https://docs.docker.com/build/building/multi-plat)

例如:

\# Building the image using buildx and loading it into docker
sudo docker buildx build -t tshock:linux-arm64 --platform linux/arm64 --load .

# Running the image
docker run -p 7777:7777 -p 7878:7878 \\
           -v /home/cider/tshock/:/tshock \\
           -v /home/cider/.local/share/Terraria/Worlds:/worlds \\
           -v /home/cider/tshock/plugins:/plugins \\
           --rm -it tshock:linux-arm64 \\
           -world /worlds/backflip.wld -motd "ARM64 ftw"