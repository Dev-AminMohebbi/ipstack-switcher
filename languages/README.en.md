# 🇬🇧 IPStack Switcher

> A lightweight and practical tool for quickly switching between IPv4 and IPv6 settings via command line

---

## 📘 Introduction

**IPStack Switcher** is a simple and fast tool for Linux and macOS users that allows you to easily switch between different IP stacks (IPv4 or IPv6) without manually manipulating system settings.

---

## ✨ Features

- Easy switching between IPv4 and IPv6
- Connection testing capability with `ping`, `curl`, or `wget`
- Temporary DNS and routing configuration changes
- No external package dependencies
- Quick installation and removal
- Multi-language support

---

## ⚙️ Installation

```bash
git clone https://github.com/Dev-AminMohebbi/ipstack-switcher.git
cd ipstack-switcher
sudo ./install.sh
```

---

## ❌ Removal

```bash
sudo ./uninstall.sh
```

---

## 🚀 Usage

```bash
sudo ipstack-switcher
```

After running the command, the program runs interactively and provides you with the following options:

- Display current IP settings
- Choose between IPv4 and IPv6
- Test connection
- Reset to default settings

---

## 🌐 Languages

Documentation files for this tool are available in different languages in the `languages/` folder:

- [🇬🇧 English](README.en.md)
- [🇮🇷 فارسی](README.fa.md)
- [🇨🇳 中文](README.zh.md)
- [🇯🇵 日本語](README.ja.md)
- [🇷🇺 Русский](README.ru.md)
- [🇰🇷 한국어](README.ko.md)

---

## 📜 License

This project is released under the MIT License.

---

## 💬 Contact Us

If you have suggestions or issues, please contact us through [GitHub Issues](https://github.com/Dev-AminMohebbi/ipstack-switcher/issues).

---

> 💡 Tip: You can assign this tool to a shorter name like `ips` with the following command:

```bash
alias ips="sudo ipstack-switcher"
```

---

## 🖤 Made with love for developers, testers, hackers, and system administrators