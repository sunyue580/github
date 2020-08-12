提供免费少数人访问的无限私有仓库：Bitbucket  

#设置姓名和邮箱
git config --global user.name " "
git config --global user.email " "
#提高命令输出的可读性
git config --global color.ui auto
#设置编辑器
git config --global core.editor vim
#以上内容设置后信息出现在~/.gitconfig文件

#添加公开密钥
ssh-keygen -t rsa -C " " #引号内为邮箱,然后在github上添加~/.ssh/id_rsa.pub的公开密钥
#与github认证和通信
ssh -T git@github.com

#提交到暂存区后，查看工作区和暂存区的差别
git diff HEAD
#提交到暂存区后，又修改工作区内容，查看工作区和暂存区的差别
git diff

#创建并切换分支
git checkout -b + 分支名  # 等同于git branch + 分支名；git checkout + 分支名

#以图表形式查看分支
git log --graph

#返回到之前某一时间点
git reset --hard d4cd4b40099fad805ed9763b8d9f9b1e939e8000  #最后一串字符通过git log获得

#恢复上一步操作，再次返回误操作前的任一时间点
git reset --hard 2bd4770  #最一串字符通过git reflog获得

#修改提交信息
git commit --amend

#工作区直接到仓库
git commit -am ' '

#将前两次的git log记录合并，下面这行代码是在执行第一次错误内容的提交和第二次改正错误内容的提交之后运行
git rebase -i HEAD~2   #将第二行的pick改成fixup，即删除第二次修改错误的记录

#添加远程仓库
git remote add origin git@github.com:sunyue580/test.git   #仓库名origin可以自己命名

#以下推送，要先切换到相应分支，再推送到对应的分支
git push
git push -u origin master  #推送到master分支
git push -u origin branch1  #推送到branch1分支

#默认获取master分支内容
git clone https://github.com/sunyue580/test/
#进入test文件夹,获取branch1分支内容，并命名为branch1
git checkout -b branch1 origin/branch1

#远程仓库branch1分支已经更新，则获取branch1内容,但是下载后还是master分支，不是branch1分支
git pull origin branch1

git branch -a   #显示本地和远程仓库的所有分支


##hub命令
hub clone test
hub clone sunyue580/test
hub remote add sunyue580  #在当前本地仓库里
hub fetch sunyue580
#先clone github/hub仓库，再fork仓库；下面两行代码效果相同
hub fork
#sunyue580:branch1分支向sunyue580:master发送pull request
hub pull-request -b sunyue580:master -h sunyue580:branch1
#branch1分支的作业内容是issue#123,直接将issue作为pull request发送
hub pull-request -i 123 -b sunyue580:master -h sunyue580:branch1
#创建本地存在，远程不存在的仓库；公开仓库？？
hub create




