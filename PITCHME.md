---?image=assets/cover.jpg&size=cover

# Gaussian Distribution

2018.07.17


@size[80%](機械・情報系コース修士１年)

@size[80%](宮地 俊宏)

@size[80%](西田 龍登)



---?image=bg/pink.png

# 目的

一様乱数 → ガウス乱数

---
# 一様分布のグラフ
<canvas data-chart="line">
<!-- 
{
 "data": {
  "labels": ["January"," February"," March"," April"," May"," June"," July"],
  "datasets": [
   {
    "data":[65,59,80,81,56,55,40],
    "label":"My first dataset","backgroundColor":"rgba(20,220,220,.8)"
   },
   {
    "data":[28,48,40,19,86,27,90],
    "label":"My second dataset","backgroundColor":"rgba(220,120,120,.8)"
   }
  ]
 }, 
 "options": { "responsive": "true" }
}
-->
</canvas>


---

# 前回までの復習

ランダムサンプルをいくつか得る方法として
* 変換法
* 棄却法

---

# しかし

---

* ガウス関数は<font color="Red">$-\infty$</font>から<font color="Red">$+\infty$</font>の間に定義

* この方法では範囲に制限を設ける必要がある
---

# そこで

---

- 正規乱数の特徴
- 平均 $\pm 1 \times$標準偏差の範囲に全体の約$68.3 \%$
- 平均 $\pm 2 \times$標準偏差の範囲に全体の約$95.5 \%$
- 平均 $\pm 3 \times$標準偏差の範囲に全体の約$99.7 \%$

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

おすまい


