# 1-2. hardlink vs symlink 및 pstree로 process 현황 확인

## 실행   
  touch a.txt
  ln a.txt a_hard.txt
  ln -s a.txt a_sym.txt
  ls -li

  pstree -p
  ps auxf

## 결과  
total 4
408195 -rw-rw-r-- 2 ubuntu ubuntu    0 Mar 18 10:55 a_hard.txt
408196 lrwxrwxrwx 1 ubuntu ubuntu    5 Mar 18 10:55 a_soft.txt -> a.txt
408195 -rw-rw-r-- 2 ubuntu ubuntu    0 Mar 18 10:55 a.txt
436816 -rw-rw-r-- 1 ubuntu ubuntu 1332 Mar 16 12:11 notes1.md

systemd(1)─┬─ModemManager(665)─┬─{ModemManager}(666)
           │                   └─{ModemManager}(671)
           ├─agetty(843)
           ├─cron(836)
           ├─dbus-daemon(619)
           ├─multipathd(399)─┬─{multipathd}(402)
           │                 ├─{multipathd}(403)
           │                 ├─{multipathd}(404)
           │                 ├─{multipathd}(405)
           │                 ├─{multipathd}(406)
           │                 └─{multipathd}(407)
           ├─networkd-dispat(624)
           ├─nginx(25185)───nginx(25188)
| 이하 생략

USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           2  0.0  0.0      0     0 ?        S    Mar13   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   Mar13   0:00  \_ [rcu_gp]
root           4  0.0  0.0      0     0 ?        I<   Mar13   0:00  \_ [rcu_par_gp]
root           5  0.0  0.0      0     0 ?        I<   Mar13   0:00  \_ [slub_flushwq]
root           6  0.0  0.0      0     0 ?        I<   Mar13   0:00  \_ [netns]
root           8  0.0  0.0      0     0 ?        I<   Mar13   0:00  \_ [kworker/0:0H-events_highpri]
| 이하 생략2

## 알게된 것  
Hard link는 ls -il을 썼을 때 확인할 수 있듯이 파일을 복제하듯이 만들고 Symbolic link는 우리가 아는 링크처럼 ->를 포함하고 있다.
pstree -p와 ps auxf로 현재 프로세스들의 상태를 쉽게 확인할 수 있다.
