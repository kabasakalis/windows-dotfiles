@echo off
set commit_message=%1
set commit_tag=%2
echo %commit_message%
echo %commit_tag%
call git add --all
call git commit --m %commit_message%
call git tag -a %commit_tag%  -m "Deploy Version %commit_tag%"
call git push origin %commit_tag%
