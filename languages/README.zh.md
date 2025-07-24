# 🇨🇳 IPStack Switcher

> 一个轻量级实用工具，用于通过命令行快速切换 IPv4 和 IPv6 设置

---

## 📘 介绍

**IPStack Switcher** 是一个专为 Linux 和 macOS 用户设计的简单快速工具，让您可以轻松在不同的 IP 协议栈（IPv4 或 IPv6）之间切换，无需手动操作系统设置。

---

## ✨ 功能特性

- 在 IPv4 和 IPv6 之间轻松切换
- 支持使用 `ping`、`curl` 或 `wget` 进行连接测试
- 临时更改 DNS 和路由配置
- 无外部软件包依赖
- 快速安装和卸载
- 多语言支持

---

## ⚙️ 安装

```bash
git clone https://github.com/Dev-AminMohebbi/ipstack-switcher.git
cd ipstack-switcher
sudo ./install.sh
```

---

## ❌ 卸载

```bash
sudo ./uninstall.sh
```

---

## 🚀 使用方法

```bash
sudo ipstack-switcher
```

运行命令后，程序将以交互模式运行，为您提供以下选项：

- 显示当前 IP 设置
- 在 IPv4 和 IPv6 之间选择
- 测试连接
- 重置为默认设置

---

## 🌐 语言

此工具的文档文件以不同语言提供，位于 `languages/` 文件夹中：

- [🇬🇧 English](README.en.md)
- [🇮🇷 فارسی](README.fa.md)
- [🇨🇳 中文](README.zh.md)
- [🇯🇵 日本語](README.ja.md)
- [🇷🇺 Русский](README.ru.md)
- [🇰🇷 한국어](README.ko.md)

---

## 📜 许可证

本项目基于 MIT 许可证发布。

---

## 💬 联系我们

如果您有建议或问题，请通过 [GitHub Issues](https://github.com/Dev-AminMohebbi/ipstack-switcher/issues) 与我们联系。

---

> 💡 提示：您可以使用以下命令为此工具设置一个更短的名称，如 `ips`：

```bash
alias ips="sudo ipstack-switcher"
```

---

## 🖤 为开发者、测试人员、黑客和系统管理员用心制作