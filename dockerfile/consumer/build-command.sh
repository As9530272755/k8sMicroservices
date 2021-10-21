#!/bin/bash
docker build -t hub.zhangguiyuan.com/baseimage/dubbo-demo-consumer:v1  .
sleep 3
docker push hub.zhangguiyuan.com/baseimage/dubbo-demo-consumer:v1
