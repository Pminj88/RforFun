# 共立出版『Rで楽しむ統計』サポートページ

とりあえず，code，data，figにコード例，データ，図のRソースとMakefileを置いておきます。

[本文中の全コード](code.md)を公開しました。

## リンク

* 共立出版の[『Rで楽しむ統計』のページ](http://www.kyoritsu-pub.co.jp/bookdetail/9784320112414)
* 共立出版の[「Wonderful R」シリーズのページ](http://www.kyoritsu-pub.co.jp/series/205/)

## 補足説明

こちら（GitHub）で公開しているものは，文字コードはすべてUTF-8になっています。UTF-8は，MacやLinuxでは標準ですが，WindowsではまだSJISが標準なので，Windowsの標準的なツールでそのまま開くと，文字化けしてしまいます。文字コードについては，本書p.8に詳しく説明してありますので，ご参照ください。WindowsのRで開くときは，例えば
```
x = read.csv("data/rika_hist.csv", fileEncoding="UTF-8")
```
のようにオプションでUTF-8を指定しないと，文字化けを起こし，正しく読み込めません。

それから，figフォルダの中にいろいろ入っているものは，MakefileとRscriptで出版品質の図版PDFを一括生成するためのもので，本書のような本をLaTeXで一括作成する著者のための参考として収録したものです。通常の解析に利用するコードではありません。本文中の全コードは[こちら](code.md)で公開していますので，そちらをお使いください。

## Errata

* p.28 最初の4行がまったく違いますorz。正しくは
```
> qnorm(0.975)
[1] 1.959964
> qnorm(0.995)
[1] 2.575829
```
です。また，その少し下に `y$生徒数` が突然出てきますが，その前に何かが抜けていますねorz。

* p.54 「密度関数 dpois(x,λ)」は，いろいろ考えましたが，とりあえず「確率 dpois(x,λ)」でどうでしょうか。Rのヘルプでは「density」functionと呼んでおり，そもそもdpoisのdはdensityから来ているのですが，離散分布ですので，密度関数と呼ぶのは少々ためらいがあります。離散分布の確率には「質量関数」（mass function）という用語があるので，そちらを（どこかで定義して）使うべきだったかもしれません。

* p.152 間違いではないですが，下から10行・9行のコードがやや不自然でした。次のようにするほうが素直かもしれません。
```
m = outer(40:90, 40:90, Vectorize(function(x,y) f(c(x,y))))
```
* p.155 下から4行目：都道府県iの「点数」→都道府県iの科目jの「点数」
