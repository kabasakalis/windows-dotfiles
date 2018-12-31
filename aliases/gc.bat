@echo off
call git add --all  && git commit -m %1 && git push
