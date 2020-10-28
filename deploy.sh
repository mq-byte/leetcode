#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e
git config user.name JoeyQiuYang
git config user.email 1736315428@qq.com
git add -A
git commit -m 'hello word'
git push git@github.com:JoeyQiuYang/leetcode.git master

# 生成静态文件
npm run docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git config user.name JoeyQiuYang
git config user.email 1736315428@qq.com

git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://JoeyQiuYang.github.io/leetcode
git push -f git@github.com:JoeyQiuYang/leetcode.git master:gh-pages

cd -
