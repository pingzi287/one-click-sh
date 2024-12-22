#!/bin/bash

# 定义脚本的 URL 和文件名
SCRIPT_URL="https://raw.githubusercontent.com/pingzi287/linux-amd64/main/linux_amd64.sh"
SCRIPT_NAME="linux_amd64.sh"

# 下载脚本
echo "正在下载脚本..."
wget --no-check-certificate $SCRIPT_URL -O $SCRIPT_NAME

# 检查下载是否成功
if [ $? -eq 0 ]; then
    echo "脚本下载成功！"
else
    echo "下载失败，请检查网络连接或URL是否正确。"
    exit 1
fi

# 赋予执行权限
echo "正在赋予执行权限..."
chmod 777 $SCRIPT_NAME

# 执行脚本
echo "正在执行脚本..."
./$SCRIPT_NAME
