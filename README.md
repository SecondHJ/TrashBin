## 实现Linux回收站功能
为避免误使用 "rm -rf /\*", "rm -rf ~" 等危险命令，该脚本会在home目录下自动创建trash目录，将删除文件移到该目录，并定时清理(默认每天0时0分)。  
To avoid executing command like "rm -rf /\*", "rm -rf ~" , this script will create a direction on home path named "trash", the file you delete will be moved to this direction, and clear at specified time by linux crontab (00:00:00 by default)
#### install
    chomod +x install.sh && sudo ./install.sh
#### use
    del filename
#### check
    ls ~/trash  

#### option
- -y:   delete without remind

#### TODO:
- 容量限制
- 恢复已删除命令
