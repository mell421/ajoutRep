# devtools::document("ajoutRep")
# install.packages("gsheet")
# usethis::use_vignette("base_de_donnees_principale")

loadMesSources <- function(){
  source("C:/Users/popco/Documents/GitHub/ajoutRep/ajoutRep/R/accueil.R")
  source("C:/Users/popco/Documents/GitHub/ajoutRep/ajoutRep/R/copy.R")
  source("C:/Users/popco/Documents/GitHub/ajoutRep/ajoutRep/R/nombre.R")
  source("C:/Users/popco/Documents/GitHub/ajoutRep/ajoutRep/R/max.resume.R")
  source("C:/Users/popco/Documents/GitHub/ajoutRep/ajoutRep/R/resume.R")
}

loadMesPackages <- function(){
  library("gsheet")
  # library(dplyr)
}

loadMesPackages()
loadMesSources()
