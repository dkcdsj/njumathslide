#!/bin/bash
# 用法:
#   ./git_push_script.sh "本次修改说明"
#   不传参数则交互输入说明

current_date=$(date +%Y-%m-%d)

if [ $# -eq 0 ]; then
  read -p "请输入本次提交说明: " extra_msg
else
  extra_msg="$*"
fi

commit_msg="${current_date} ${extra_msg}"

git pull
git add .
git commit -m "${commit_msg}"
git push

