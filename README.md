# Data Classification and Visualization

對 `mixture.example` 進行分類與結果視覺化，並提供一個 Shiny 的交互介面來調動模型，藉此認知超參數會對分類器造成什麼影響。

## 分類器

* k-鄰居 (knn.R) : 於 Shiny提供鄰居數的調整
* 支持向量機 (svm.R) : 於 Shiny 提供 cost 的調整 (kernel 待議)

## 套件需求

* [Shiny](https://shiny.rstudio.com/)
* class : 使用 k- 鄰居算法
* e1071 : 由林智仁教授所開發的 svm

```
install.packages("e1071")
```

## 資料集

取自 “The Elements of Statistical Learning”, prob 與 marginal prob 是用訓練好的模型評估出的，不會用於本次實驗。

```
x	       200 x 2 matrix of training predictors
y	       class variable; logical vector of TRUES and 
	       FALSES - 100 of each
xnew	       matrix 6831 x 2 of lattice points in predictor space
prob	       vector of 6831 probabilities (of class TRUE) at each 
	       lattice point
marginal       marginal probability at each lattice point
px1	       69 lattice coordinates for x.1
px2	       99 lattice values for x.2  (69*99=6831)
```

## License

MIT