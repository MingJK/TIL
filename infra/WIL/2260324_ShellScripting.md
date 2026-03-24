# 2-1. Bash Shell scripting과 실행

## 실행   
vi infra/WIL/ExShell.sh  
chmod 744 infra/WIL/ExShell.sh  
infra/WIL/ExShell.sh   

## 결과   
```bash
=== CPU ===
%Cpu(s):  0.0 us,  0.0 sy,  0.0 ni,100.0 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
=== Memory ===
               total        used        free      shared  buff/cache   available
Mem:           1.9Gi       216Mi       169Mi       0.0Ki       1.5Gi       1.5Gi
Swap:          3.0Gi       3.0Mi       3.0Gi
=== Disk ===
Filesystem                        Type   Size  Used Avail Use% Mounted on
/dev/mapper/ubuntu--vg-ubuntu--lv ext4    15G  8.4G  5.6G  61% /
/dev/sda2                         ext4   2.0G  255M  1.6G  14% /boot
=== Top 5 processes ===
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.5 166392 11736 ?        Ss   Mar13   0:43 /lib/systemd/systemd --system --deserialize 37
root           2  0.0  0.0      0     0 ?        S    Mar13   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   Mar13   0:00 [rcu_gp]
root           4  0.0  0.0      0     0 ?        I<   Mar13   0:00 [rcu_par_gp]
root           5  0.0  0.0      0     0 ?        I<   Mar13   0:00 [slub_flushwq]  
```  

## 알게된 것  
bash script로 어느정도 코딩이 되는건 알았는데 이런식으로 쓰는건 좀 생각 못했었는데 신기하너
