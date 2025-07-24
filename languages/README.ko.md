# 🇰🇷 IPStack Switcher

> 명령줄을 통해 IPv4와 IPv6 설정을 빠르게 전환할 수 있는 가볍고 실용적인 도구

---

## 📘 소개

**IPStack Switcher**는 Linux 및 macOS 사용자를 위한 간단하고 빠른 도구로, 시스템 설정을 수동으로 조작할 필요 없이 서로 다른 IP 스택(IPv4 또는 IPv6) 간에 쉽게 전환할 수 있습니다.

---

## ✨ 기능

- IPv4와 IPv6 간의 쉬운 전환
- `ping`, `curl`, 또는 `wget`을 사용한 연결 테스트 기능
- DNS 및 라우팅 설정의 임시 변경
- 외부 패키지 의존성 없음
- 빠른 설치 및 제거
- 다국어 지원

---

## ⚙️ 설치

```bash
git clone https://github.com/Dev-AminMohebbi/ipstack-switcher.git
cd ipstack-switcher
sudo ./install.sh
```

---

## ❌ 제거

```bash
sudo ./uninstall.sh
```

---

## 🚀 사용법

```bash
sudo ipstack-switcher
```

명령어를 실행하면 프로그램이 대화형으로 실행되며 다음 옵션을 제공합니다:

- 현재 IP 설정 표시
- IPv4와 IPv6 중 선택
- 연결 테스트
- 기본 설정으로 재설정

---

## 🌐 언어

이 도구의 문서 파일은 `languages/` 폴더에 다양한 언어로 제공됩니다:

- [🇬🇧 English](README.en.md)
- [🇮🇷 فارسی](README.fa.md)
- [🇨🇳 中文](README.zh.md)
- [🇯🇵 日本語](README.ja.md)
- [🇷🇺 Русский](README.ru.md)
- [🇰🇷 한국어](README.ko.md)

---

## 📜 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다.

---

## 💬 문의하기

제안사항이나 문제가 있으시면 [GitHub Issues](https://github.com/Dev-AminMohebbi/ipstack-switcher/issues)를 통해 연락해 주세요.

---

> 💡 팁: 다음 명령어로 이 도구에 `ips`와 같은 더 짧은 이름을 할당할 수 있습니다:

```bash
alias ips="sudo ipstack-switcher"
```

---

## 🖤 개발자, 테스터, 해커, 시스템 관리자를 위해 사랑으로 제작