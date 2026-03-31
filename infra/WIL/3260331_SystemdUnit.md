# 3-2. systemd와 unit

## 실행   
  
## 결과     
  
## 알게된 것  
### Systemd Unit file  
  
- 각 유닛들을 관리하기 위한 설정파일, 아래와 같은 형태로 유닛을 만들 수 있다.  
  
```bash  
[Unit]
Description=My Simple Web Server
After=network.target

[Service]
ExecStart=/usr/bin/python3 -m http.server 8000
WorkingDirectory=/home/user/web  
User=user  
Restart=on-failure  
  
[Install]  
WantedBy=multi-user.target  
```   
