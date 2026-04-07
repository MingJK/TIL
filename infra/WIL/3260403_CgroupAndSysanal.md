# 3-3. Systemd analyze와 Cgroup

## 실행   
systemd-analyze blame | head -5    
systemd-analyze critical-chain    

## 결과     
```
12.028s systemd-networkd-wait-online.service  
 7.897s snap.lxd.activate.service  
 2.776s apt-daily-upgrade.service  
 1.922s dev-mapper-ubuntu\x2d\x2dvg\x2dubuntu\x2d\x2dlv.device  
 1.412s motd-news.service    
  
The time when unit became active or started is printed after the "@" character.  
The time the unit took to start is printed after the "+" character.  
  
graphical.target @16.554s  
└─multi-user.target @16.554s  
  └─apport.service @16.455s +79ms  
    └─remote-fs.target @16.453s  
      └─remote-fs-pre.target @16.453s  
        └─rpcbind.service @2.671s +74ms  
          └─systemd-tmpfiles-setup.service @2.592s +75ms  
            └─local-fs.target @2.561s  
              └─run-snapd-ns-lxd.mnt.mount @10.750s  
                └─run-snapd-ns.mount @9.672s  
                  └─local-fs-pre.target @1.136s  
                    └─keyboard-setup.service @639ms +496ms  
                      └─systemd-journald.socket @605ms  
                        └─-.mount @567ms  
                          └─-.slice @567ms  
			  ```
## 알게된 것  
### Cgroup  
프로세스들을 그룹으로 나눠 리소스 사용량 수집, 제한, 격리를 하기위한 그룹  
컨테이너 가상화에 쓰이는 기술 중 하나이다.  
/sys/fs/cgroup 을 마운트하여 사용한다  
  
systemd-analyze blame -> 부팅시에 시간이 오래걸린 프로세스를 순서대로 보여줌  
systemd-analyze critical-chain -> 부팅 후 시작/완료 시점과 의존성 트리로 실질적 병목 구간을 확인할 수 있게 해줌  
