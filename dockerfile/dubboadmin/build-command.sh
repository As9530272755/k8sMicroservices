#!/bin/bash
TAG=$1
docker build -t hub.zhangguiyuan.com/baseimage/dubboadmin:${TAG}  .
sleep 3
docker push  hub.zhangguiyuan.com/baseimage/dubboadmin:${TAG}
