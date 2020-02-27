#!/bin/sh
  apt-get update
  sudo apt-get install -y python3-pip python3-dev
  sudo pip3 install --upgrade pip
  pip3 install  https://ali-perseus-release.oss-cn-huhehaote.aliyuncs.com/fastgpu_for_cloudshell/ncluster-1.0.6-py3-none-any.whl