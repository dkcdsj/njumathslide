#!/bin/bash
# 获取当前日期，格式为 YYYYMMDD
current_date=$(date +%Y-%m-%d)
	
git pull
# 添加所有变更到暂存区
git add .
	
# 提交变更，包括当前日期
git commit -m "${current_date} 自动更新"
	
# 推送到远程仓库的 master 分支
git push

