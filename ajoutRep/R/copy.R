# devtools::document("ajoutRep")
# install.packages("gsheet")
# usethis::use_vignette("base_de_donnees_principale")

# fonction qui charge la page copy code
copy.code <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[1:5]
  na.omit(table)
  table <- data.frame(table)
  print("1jour-2date-3code ec-4code ter-5concat code")
  print("->")
  return(table)
}
# fonction qui charge la page copy conclu
copy.conclu <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[9:16]
  na.omit(table)
  table <- data.frame(table)
  print("1nbCarC-2nbCarCb-3jour-4date-5conclu-6concluBis-7nc-8ncb")
  print("->")
  return(table)
}
# fonction qui charge la page copy sem
copy.sem <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[17:23]
  na.omit(table)
  table <- data.frame(table)
  print("1date-2resumesem-3taux-4nbChgmt-5nbCar-6valid-7nrs")
  print("->")
  return(table)
}
# fonction qui charge la page copy mois
copy.mois <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[24:30]
  na.omit(table)
  table <- data.frame(table)
  print("1date-2resumemois-3taux-4nbChgmt-5nbCar-6valid-7nrm")
  print("->")
  return(table)
}
# fonction qui charge la page copy smra
copy.smra <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[44:49]
  table <- data.frame(table)
  na.omit(table)
  print("1jour-2date-3a-4r-5m-6s")
  print("->")
  return(table)
}
# fonction qui charge la page copy concat
copy.concat <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[50:53]
  table <- data.frame(table)
  na.omit(table)
  print("1-2-3-4")
  print("->")
  return(table)
}
# fonction qui charge la page copy eff
copy.eff <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1292069466'))
  table <- table[56:79]
  table <- data.frame(table)
  na.omit(table)
  print("1-2-3-4")
  print("->")
  return(table)
}

mainCopy <- function(){
  s <- accueil()
  print(s[1,])
  t <- copy.code()
  print(t[1,])
  u <- copy.conclu()
  print(u[1,])
  v <- copy.sem()
  print(v[1,])
}
