library(e1071) # for svm

# Data loading and preprocessing
mixture <- source("mixture.example")$value

features_train <- data.frame(v1=mixture$x[,1],v2=mixture$x[,2])
features_pred  <- data.frame(v1=mixture$xnew[,1],v2=mixture$xnew[,2])
labels_train   <- data.frame(label=as.integer(mixture$y))

px <- mixture$px1
px2 <- mixture$px2

train = data.frame(features_train, labels_train)

# to build and train the svm.
getSVMClassifier <- function(c){
  return(svm(label~v1+v2, data=train, cost=c, type="C-classification", probability=TRUE))
}

# to plot the classification result.
plotResult <- function(svm){
  result = predict(svm,features_pred,probability=TRUE)
  
  features_pred$color[result==1] = "lightcoral"
  features_pred$color[result==0] = "lightblue"

  
  # Prob matrix reshape
  prob = attr(result,"probabilities")
  prob = prob[,1] # Choose class 1's prob
  prob <- matrix(prob, length(px), length(px2))
  
  # draw the decesion boundary/surface
  contour(px, px2, prob,
          levels=0.5, labels="0.5",
          xlab="", ylab="",
          main=paste("SVM with Cost",toString(svm$cost)),
          axes=FALSE,
          lwd=1.6
  )
  
  # points the lattices.
  points(x=features_pred[,1],
        y=features_pred[,2],
        cex=0.6,pch=20,col=features_pred$color)
  
  # points the training data.
  points(x=train$v1,y=train$v2,
         col=ifelse(train$label==0,"cornflowerblue","coral"),
         pch=19,cex=1.3,lwd=1.5)
  
  #traget the support point.
  points(x=train$v1[svm$index],
         y=train$v2[svm$index],pch=5,cex=1.5)
}

plotResult(getSVMClassifier(1200))

