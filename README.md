# Data Classification and Visualization

採用對 `mixture.example` 進行分類與可視化，並提供一個 Shiny 的交互介面呈現超參數的變動會對分類造成什麼影響。

## 實作分類器

* KNN Classifier
* Support vector machine

## 套件需求

* [Shiny](https://shiny.rstudio.com/)
* randomForest
```
install.packages("e1071")
```

## 資料集

取自 “The Elements of Statistical Learning”

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