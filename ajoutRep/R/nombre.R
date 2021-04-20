# devtools::document("ajoutRep")
# install.packages("gsheet")

# usethis::use_vignette("base_de_donnees_principale")

mainNb <- function(){
  s <- accueil()
  print(s[1,])
  t <- copy.code()
  print(t[1,])
  u <- copy.conclu()
  print(u[1,])
  v <- copy.sem()
  print(v[1,])
}

aleat <- function(max,nb){
  tirage <- sample(1:max,nb)
  return(tirage)
}

bigraphLine <- function(var1,var2,xAxis,title){
  win.graph(600,400,10)
  plot(var1,main=title,type = "l",col="red",xlab = xAxis)
  lines(var2,type = "l",col="blue")

}

