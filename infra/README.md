# Infrastructure Study

> 네트워크 심화 → 리눅스 심화 → Docker → Proxmox 실전 → 모니터링(PLG 스택) → 트러블슈팅
예상 기간: **30주 (약 7.5개월)** | 평일 2시간, 주말 5시간 기준
>

---

## 목표 상태 (이 로드맵 완료 후)

- 패킷이 NIC → 커널 → 프로세스까지 흐르는 경로를 단계별로 설명하고, tcpdump/wireshark로 원인을 즉시 추적한다.
- Proxmox 호스트(단일·클러스터) 설치·네트워크 설계·스토리지 연동·GPU 모니터링을 스스로 설계하고 운영한다.
- Prometheus + Loki + Grafana (PLG 스택)로 메트릭·로그 수집·대시보드·알람을 구성하고, 장애 시 근거 있는 대응을 설계한다.
- Docker + docker-compose로 서비스를 컨테이너화하고 운영할 수 있다.
- 실무형 트러블슈팅(네트워크, I/O, 서비스, 인증·토큰, 스토리지)을 로그·패킷·메트릭으로 재현·해결한다.
- Bash/Python 자동화 스크립트로 반복 작업을 자동화한다.

## 깃허브 업로드
```
# 실습 후
vim infra-study/week01/notes.md

# 커밋
git add infra-study/week01/notes.md
git commit -m "week01: 리눅스 파일시스템 inode 실습"
git push
```

## 실습 내용 작성
```
# Week 06 — TCP 3-way Handshake 분석

## 실습 환경
- OS: Ubuntu 22.04
- 도구: tcpdump, python3

## 한 것
bash
python3 -m http.server 8080
sudo tcpdump -i lo -nn port 8080

## 결과
SYN → SYN-ACK → ACK 순서로 패킷 확인
클라이언트가 FIN 먼저 보냄 → TIME_WAIT은 클라이언트 측 발생

## 몰랐는데 알게 된 것
- [S.] = SYN + ACK 동시
- RST는 FIN 없이 즉시 끊음

## 다음에 확인할 것
- [ ] TIME_WAIT 수 ss -tan으로 직접 세보기


---

**파일 구조는 이렇게요:**
infra-study/
├── week01/
│   └── notes.md
├── week06/
│   ├── notes.md
│   └── captures/
│       └── handshake.pcap   ← tcpdump 캡처파일은 여기
└── troubleshooting/
    └── scenario-01.md
```
