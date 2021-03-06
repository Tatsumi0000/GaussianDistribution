---?image=assets/background.jpg&size=cover

# Gaussian Distribution

2018.07.17


@size[80%](機械・情報系コース修士1年)

@size[80%](宮地 俊宏)

@size[80%](西田 龍登)



---?image=bg/pink.png

# 目的

一様乱数 → ガウス乱数

---

# 一様分布のグラフ

---

# 前回までの復習

---

ランダムサンプルをいくつか得る方法として

<ul style="text-align:left">
  <li>交換法</li>
  <li>棄却法</li>
</ul>

---

# しかし

---

* ガウス関数は<font color="Salmon">$-\infty$</font>から<font color="Salmon">$+\infty$</font>の間に定義

* 棄却法では範囲に制限を設ける

---

# そこで

---

# 正規乱数の特徴

- 平均 <font color="Salmon">$\pm 1$</font>$\times$標準偏差は，全体の約<font color="Salmon">$68.3 \%$</font>
- 平均 <font color="Salmon">$\pm 2$</font>$\times$標準偏差は，全体の約<font color="Salmon">$95.5 \%$</font>
- 平均 <font color="Salmon">$\pm 3$</font>$\times$標準偏差は，全体の約<font color="Salmon">$99.7 \%$</font>
<div style="text-align: right;">
をカバー
</div>

---

# $ \displaystyle r\_{G} = \sum\_{i=1}^{N} r\_{i} - \frac{N}{2} $

---

* 変数$ r\_{G}$の最大範囲は$\mu = 0$および標準偏差$\sigma = \sqrt{\frac{N}{12}}$
* $N = 2$の場合和は三角形関数
* $N$が増加するとガウス分布の形状に近づく
* $N = 4$などの値は<font color="Salmon">あまり精度を求めない計算向き</font>
* $N = 4$の場合$\sigma = \sqrt{\frac{1}{3}} \fallingdotseq 0.058$の範囲は$-2 \pm 2$に対応し，$\mu \pm \sigma \sqrt{12}$（$\mu \pm 3.46\sigma$）に対応

---

# ガウス関数に近い近似が必要であり

---


# わるさ

- カスタマイズ必須
- 日本語フォント考慮なし
- PDFのフォントやばい
- [Wiki](https://github.com/gitpitch/gitpitch/wiki)を読むの大変

---
$$\sum_{i=0}^n i^2 = \frac{(n^2+n)(2n+1)}{6}$$

---

コードブロックのハイライトができます。
```python
for i in range(0, 101):
  print("Hello, World!")
end
```

@[1](ハイライト行の解説も記述できます。)
@[2-4](コメントは[]の右に記述します。)

---

# 例題

* 10cmの均一な長さの棒
* 一方は$0~ ^\circ C$，もう一方は$100~ ^\circ C$
* $T\_{i}' = T\_{i} + \sigma\_{i}r\_{i}$

---

# もしも

---

# あなたが無人島にラップトップパソコンと一緒の場合

---

# $ N = 12$の魔法の数字を思い出してください

---

# そうすることで$ N $個の乱数を合計するのは簡単なはず

---

# おわり

