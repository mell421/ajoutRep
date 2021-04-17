# devtools::document("ajoutRep")
library(gsheet)
library(dplyr)

# fonction qui charge la page d'accueil
accueil <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1775525986')
  Series <- Series[1:15]
  na.omit(Series)
  Series <- data.frame(Series)
  return(Series)
}
# fonction qui charge la page copy code
copy.code <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')
  Series <- Series[1:7]
  na.omit(Series)
  Series <- data.frame(Series)
  return(Series)
}
# fonction qui charge la page copy conclu
copy.conclu <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')
  Series <- Series[9:16]
  na.omit(Series)
  Series <- data.frame(Series)
  return(Series)
}
# fonction qui charge la page copy sem
copy.sem <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')
  Series <- Series[17:23]
  na.omit(Series)
  Series <- data.frame(Series)
  return(Series)
}

main <- function(){
  s <- accueil()
  print(s[1,])
  t <- copy.code()
  print(t[1,])
  u <- copy.conclu()
  print(u[1,])
  v <- copy.sem()
  print(v[1,2])
}
main()

