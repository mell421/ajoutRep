# devtools::document("ajoutRep")
library(gsheet)
library(dplyr)

# fonction qui charge la page d'accueil
accueil <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1775525986')
  Series <- Series[1:15]
  na.omit(Series)
  Series <- data.frame(Series)
  print("1horodateur-2titre-3saison-4episode-5status-6tisa-7tisaep-8indice-9sa-10hh-11image-12descrImg-13sec-14minute-15tisaet")
  print("->")
  return(Series)
}
# fonction qui charge la page copy code
copy.code <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')
  Series <- Series[1:5]
  na.omit(Series)
  Series <- data.frame(Series)
  print("1jour-2date-3code ec-4code ter-5concat code")
  print("->")
  return(Series)
}
# fonction qui charge la page copy conclu
copy.conclu <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')
  Series <- Series[9:16]
  na.omit(Series)
  Series <- data.frame(Series)
  print("1nbCarC-2nbCarCb-3jour-4date-5conclu-6concluBis-7nc-8ncb")
  print("->")
  return(Series)
}
# fonction qui charge la page copy sem
copy.sem <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')
  Series <- Series[17:23]
  na.omit(Series)
  Series <- data.frame(Series)
  print("1date-2resumesem-3taux-4nbChgmt-5nbCar-6valid-7nrs")
  print("->")
  return(Series)
}
# fonction qui charge la page copy mois
copy.mois <- function(){
  Series <- gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466')
  Series <- Series[24:30]
  na.omit(Series)
  Series <- data.frame(Series)
  print("1date-2resumemois-3taux-4nbChgmt-5nbCar-6valid-7nrm")
  print("->")
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
  print(v[,2])
}
main()
s <- copy.code()
print(s[1,])

