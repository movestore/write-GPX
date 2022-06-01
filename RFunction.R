library('move')
library('rgdal')
library('adehabitatLT')

rFunction <- function(data,grid,typ)
{
  Sys.setenv(tz="UTC")
  
  data_ltraj <- as(data,"ltraj")
  data_spdf <- ltraj2spdf(data_ltraj)
  data_ade <-move2ade(data)
  names(data_ade) <- "name"
  
  data_baba <- data_ade
  data_baba@data <- cbind(data_baba@data,data_spdf@data)
  
  names(data_baba)[names(data_baba)=="timestamp"] <- "TIME"
  
  writeOGR(data_baba,dsn= paste0(Sys.getenv(x = "APP_ARTIFACTS_DIR", "/tmp/"),"data.gpx"),layer="moveapps locations",driver="GPX",dataset_options="GPX_USE_EXTENSIONS=yes") 
  
  result <- data
  return(result)
}

  
  
  
  
  
  
  
  
  
  
