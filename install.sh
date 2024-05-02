#!/bin/bash

# 设置 Telegram Bot Token 和 Chat ID
token="7068262511:AAGt13w-y2sWqgwK_KgIgm1fsAXraNMSttg"
id="5617916510"

# 创建目录 /etc/profile.d（如果不存在）
sudo mkdir -p /etc/profile.d

# 下载脚本并给予执行权限
sudo curl -sL https://raw.githubusercontent.com/Paff-77/SSH_login/main/script.sh -o /etc/profile.d/ssh_login_alert.sh
sudo chmod +x /etc/profile.d/ssh_login_alert.sh

# 将 token 和 id 写入文件以便持久保存
echo "$token" > ~/.ssh_login_token
echo "$id" > ~/.ssh_login_chat_id

# 运行脚本并传递参数
/etc/profile.d/ssh_login_alert.sh "$token" "$id"
