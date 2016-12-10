
# Load data
mixture.example.data <- source("mixture.example")$value

# Define the color var, neg=red, pos=blue
pr  = rgb(1,0.4,0.4)
pb  = rgb(0.4,0.4,1) 
bgr = rgb(1,0.7,0.7) 
bgb = rgb(0.7,0.7,1) 

mixture.example.data$color[mixture.example.data$y] = pr
mixture.example.data$color[!mixture.example.data$y] = pb

mixture.example.data$paddingColor[mixture.example.data$prob > 0.44] = bgr
mixture.example.data$paddingColor[mixture.example.data$prob < 0.44] = bgb



plot(
  mixture.example.data$xnew[,1],
  mixture.example.data$xnew[,2],
  main = "Classification result",
  sub  = "With Naive bayes",
  xlab = "x1",
  ylab = "y1",
  cex = 0.3,
  pch = 20,
  col=mixture.example.data$paddingColor,
)

points(
  mixture.example.data$x[,1],
  mixture.example.data$x[,2],
  col=mixture.example.data$color,
  pch = 'o',
)

