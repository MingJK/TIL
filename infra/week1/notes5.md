# 1-5. ACL, /etc/passwd, /etc/shadow  

## 실행   
sudo apt install acl   
getfacl infra/  
  
cat /etc/passwd  
sudo cat /etc/shadow  
  
## 결과   
```bash  
# file: infra/  
# owner: ubuntu  
# group: ubuntu  
user::rwx  
group::rwx  
other::r-x  
```  
  
```bash  
tcpdump:x:108:115::/nonexistent:/usr/sbin/nologin  
tss:x:109:116:TPM software stack,,,:/var/lib/tpm:/bin/false  
landscape:x:110:117::/var/lib/landscape:/usr/sbin/nologin  
fwupd-refresh:x:111:118:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin  
usbmux:x:112:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin  
ubuntu:x:1000:1000:ubuntu:/home/ubuntu:/bin/bash  
  
ubuntu:$6$80vwB3iLnlFf48Tp$ivAtakyh7jta6hW516Uc8jpFDOjuljT4DuRqLmvWBZIh0Mxg8BqoMBIWjO8xZ0MlOaAnD8XI6xsplbE9NAi46.:20409:0:99999:7:::  
lxd:!:20409::::::  
testA:$y$j9T$KbRzdFz4EFkqdhGHPfkVz1$l6OOIr0/92GgvHzWALQbUyJ8FlIH3u01s/wLvKOlzyA:20416:0:99999:7:::  
sshd:*:20524:0:99999:7:::  
```  
## 알게된 것  
