# 3-4. namespace의 종류

## 실행   

## 결과     

## 알게된 것  
Namespace: 자원의 종류를 이름 충돌을 방지하며 논리적으로 가상/그룹화 시킨다  

PID (Process ID): 프로세스 ID를 격리하여 컨테이너별로 별도의 PID 1번을 가짐.  
NET (Network): 네트워크 디바이스, IP 주소, 라우팅 테이블 등을 격리.  
MNT (Mount): 파일 시스템 마운트 포인트를 격리하여 컨테이너별 독립적인 루트 파일 시스템 사용.  
UTS (UNIX Timesharing System): 호스트 이름(Hostname)과 도메인 이름을 격리.  
IPC (Inter-Process Communication): 프로세스 간 통신 리소스(메시지 큐 등) 격리.  
USER (User): 사용자 및 그룹 ID를 격리하여 컨테이너 내 root가 실제 호스트에서는 root가 아니게 설정 가능.  
CGROUP (Control Group): cgroup 루트 디렉토리를 격리.  
TIME (Time): 부팅 시간 등 시간 개념을 격리 (커널 5.6부터 포함).   
  
<!> 요즘 GSMSV 디버깅한다고 바빠서 하루씩 뺴먹는중;;
