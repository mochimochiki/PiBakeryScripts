# PiBakeryScripts

[PiBakery](https://www.pibakery.org/)用の追加ブロック集とサンプルスクリプトです。.Net Core in docker on Raspberry Pi 環境を手軽に構築することができます。[Contributing Blocks to PiBakery](https://www.pibakery.org/docs/contribute.html)を参考に作成。

## 動作確認環境

```
Raspberry Pi: Raspberry Pi 3 Model B+
OS: Raspbian Lite (stretch)
Release: 9.3
HostOS: Windows 10 Pro (64bit)
PiBakery: v0.3.8
```

## 使い方

1. `pibakery-blocks`の中身をPiBakery本体の`pibakery-blocks`下（`C:\Program Files (x86)\PiBakery\resources\app\pibakery-blocks`など）にコピー。
2. `recipe\setupRasPi.xml`をPiBakeryで開き、適当に書き換えてSDカードに書き込み

※info.jsonはPiBakery v0.3.8をベースにしています。自分の環境の`info.json`を直接編集する場合は以下の5行を追記してください。
```
"updateupgrade",
"staticip_setup",
"proxy_setup",
"raspiconfig_setup",
"docker_install"
```