# 🇯🇵 IPStack Switcher

> コマンドラインを通じてIPv4とIPv6設定を素早く切り替えるための軽量で実用的なツール

---

## 📘 概要

**IPStack Switcher** は、LinuxとmacOSユーザー向けのシンプルで高速なツールです。システム設定を手動で操作することなく、異なるIPスタック（IPv4またはIPv6）間を簡単に切り替えることができます。

---

## ✨ 機能

- IPv4とIPv6間の簡単な切り替え
- `ping`、`curl`、または`wget`による接続テスト機能
- DNSとルーティング設定の一時的な変更
- 外部パッケージへの依存なし
- 迅速なインストールとアンインストール
- 多言語サポート

---

## ⚙️ インストール

```bash
git clone https://github.com/Dev-AminMohebbi/ipstack-switcher.git
cd ipstack-switcher
sudo ./install.sh
```

---

## ❌ アンインストール

```bash
sudo ./uninstall.sh
```

---

## 🚀 使用方法

```bash
sudo ipstack-switcher
```

コマンドを実行すると、プログラムが対話的に実行され、以下のオプションが提供されます：

- 現在のIP設定の表示
- IPv4とIPv6の選択
- 接続テスト
- デフォルト設定へのリセット

---

## 🌐 言語

このツールのドキュメントファイルは、`languages/`フォルダに様々な言語で用意されています：

- [🇬🇧 English](README.en.md)
- [🇮🇷 فارسی](README.fa.md)
- [🇨🇳 中文](README.zh.md)
- [🇯🇵 日本語](README.ja.md)
- [🇷🇺 Русский](README.ru.md)
- [🇰🇷 한국어](README.ko.md)

---

## 📜 ライセンス

このプロジェクトはMITライセンスの下で公開されています。

---

## 💬 お問い合わせ

ご提案や問題がございましたら、[GitHub Issues](https://github.com/Dev-AminMohebbi/ipstack-switcher/issues)を通じてお気軽にご連絡ください。

---

> 💡 ヒント：以下のコマンドでこのツールに`ips`のような短い名前を割り当てることができます：

```bash
alias ips="sudo ipstack-switcher"
```

---

## 🖤 開発者、テスター、ハッカー、システム管理者のために愛を込めて作成