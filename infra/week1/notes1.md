# 1-1. inode 분석하기

## 실행 
ls -li /etc/hosts
stat /etc/hosts
df -i

## 결과
262835 -rw-r--r-- 1 root root 221 Nov 17 07:13 /etc/hosts

  File: /etc/hosts
  Size: 221       	Blocks: 8          IO Block: 4096   regular file
Device: fd00h/64768d	Inode: 262835      Links: 1
Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)
Access: 2026-03-16 03:13:25.019555319 +0000
Modify: 2025-11-17 07:13:49.188000000 +0000
Change: 2025-11-17 07:13:49.188000000 +0000
 Birth: 2025-11-17 07:13:49.188000000 +0000

Filesystem                        Inodes  IUsed  IFree IUse% Mounted on
tmpfs                             251370    724 250646    1% /run
/dev/mapper/ubuntu--vg-ubuntu--lv 983040 147049 835991   15% /
tmpfs                             251370      1 251369    1% /dev/shm
tmpfs                             251370      3 251367    1% /run/lock
/dev/sda2                         131072    320 130752    1% /boot
tmpfs                              50274     25  50249    1% /run/user/1000

## 알게된 것
stas 입력시 inode, IO block, Links 등 여러 정보를 확인 가능하며 inode를 쉽게 확인할 수 있는 명령어를 알았다
inode가 부족할 경우 디스크에 공간이 남아도 쓰기를 진행할 수 없으니 조심
