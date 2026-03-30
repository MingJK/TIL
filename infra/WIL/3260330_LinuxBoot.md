# 3-1. 리눅스의 부팅과정

## 실행   
  
## 결과     
  
## 알게된 것  
## BIOS 부팅 과정  

### Power On & Power On Self Test (POST)  
  
- 메인보드 → CPU 호출 이후 바이오스 코드 호출, 이때 메모리의 엔트리 포인트(0xFFFFFFF0)에 접근하면 리셋 벡터와 매핑되어 펌웨어(Bios Code)가 호출되는 것이다.  
- CPU, RAM, 제어장치, BIOS 코드 자체, 주변장치 등에 대한 검사 진행  
  
### Boot Sector (**MBR/VBR/EBR)**  
  
- MBR  
    - POST 이후 BIOS가 가장 먼저 접근하는 부팅 디스크, 최대 4개의 primary 파티션까지만 관리할 수 있다, 어느 파티션에서 OS를 부팅할지 결정하고 이후 선택된 파티션의 VBR로 제어를 넘긴다  
        - 4개 이상의 파티션이 필요한 경우 EBR, Extended Partition을 사용한다  
- VBR  
    - 각 파티션의 첫번째 섹터에 위치하며 OS를 부팅한다.  
- EBR  
    - Extended Partition안에서 각 Logical Partition 앞에 존재한다  
  
### **GRUB(GRand Unified Bootloader)**  
  
- 여기서 그냥 GRUB이라고 표기하지만 현재 쓰이는 GRUB은 다 GRUB2가 쓰인다 1은 개 낡음  
- GRUB Stage 1  
    - MBR or VBR에 있는 부트이미지가 메모리로 로드되고 실행됨  
- GRUB Stage 1.5  
    - MBR과 첫번째 파티션 사이에 있는 블록에 저장된 core.img가 메모리로 로드 및 실행됨  
    configuragion 파일과 파일시스템을 위한 드라이버를 로드  
- GRUB Stage 2  
    - /boot/grub에 직접 접근하여 커널(vmlinuz)의 압축을 풀고 로드하고 드라이버, 파일 시스템이 들어있는 RAM 디스크 파일을(initrd.img) 로드한다.  
  
### Loading Kernel  
  
- 하드웨어 실패 검증 및 각 장치 드라이버를 불러온다  
  
### INIT (sysV vs Systemd)  
  
- INIT단계에서는 sysV와 Systemd로 나뉘는데 sysV 솔직히 첨들어봤고 대부분 Systemd쓰니까 Systemd내용만 작성하겠다  
- systemd가 .target을 실행하면서 서비스들이 시작된다   
