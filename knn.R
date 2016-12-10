require(class)

mixture.example <- source("mixture.example")$value

x <- mixture.example$x
y <- mixture.example$y
xnew <- mixture.example$xnew
px1 <- mixture.example$px1
px2 <- mixture.example$px2

KNNPlot <- function(nb_neighbor){
  
  classifier <- knn(x, xnew, y, k=nb_neighbor, prob=TRUE)
  
  prob <- attr(classifier, "prob")
  prob <- ifelse(classifier == TRUE, prob, 1-prob)
  
  prob <- matrix(prob, length(px1), length(px2))
  contour(px1, px2, prob,
          levels=0.5, labels="0.5",
          xlab="", ylab="",
          main=paste("KNN",toString(nb_neighbor)),
          axes=FALSE
  )
  points(x, col=ifelse(y==1, "coral", "cornflowerblue"))
  gd <- expand.grid(x=px1, y=px2)
  points(gd, pch=".", cex=1.2, col=ifelse(prob>0.5, "coral", "cornflowerblue"))
  box()
}

KNNPlot(20)
