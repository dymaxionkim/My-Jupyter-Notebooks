#!/usr/bin/expect
# Update My-Jupyter-Notebooks
cd /home/dong/github/My-Jupyter-Notebooks
spawn /usr/bin/git pull
spawn /usr/bin/git add --all
spawn /usr/bin/git commit -m "by push_ipynb.sh"
spawn /usr/bin/git push -u origin master
expect -re "Username for 'https://github.com':"
sleep 1
send "dymaxion.kim@gmail.com\n"
#expect -re "Password for 'https://dymaxion.kim@gmail.com@github.com':"
#sleep 1
#send "비밀번호\n"
interact

