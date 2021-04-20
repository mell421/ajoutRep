# devtools::document("ajoutRep")
# install.packages("gsheet")

# usethis::use_vignette("base_de_donnees_principale")


# fonction qui charge la page d'accueil
accueil <- function(){
  table <- suppressWarnings(gsheet2tbl('https://docs.google.com/spreadsheets/d/1HZydd6qo-GcQVqnwQnerHHnMEyR6faJXKN7Egkuqp4I/edit#gid=1775525986'))
  table <- table[1:15]
  na.omit(table)
  table <- data.frame(table)
  print("1horodateur-2titre-3saison-4episode-5status-6tisa-7tisaep-8indice-9sa-10hh-11image-12descrImg-13sec-14minute-15tisaet")
  print("->")
  return(table)
}
s <- accueil()
head(s)
