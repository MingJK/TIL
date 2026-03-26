# 2-2. 텍스트로 관리하는 리눅스 툴

## 실행   
awk -F: '$3 >= 1000 {print $1, $3}' /etc/passwd  
cat /var/log/syslog | tail -10  
grep -i systemd /var/log/syslog | awk '{print $5}' | sort | uniq -c | sort -rn | head -10  
  
## 결과     
기찮은데 스킵(어제 한거라... 대충 uid 1000번이상뽑기, 로그보기 등 이었음)  
  
## 알게된 것  
awk, sort, uniq 등 쓰는법을 얼추 알았다

