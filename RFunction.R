library(move2)
library(sf)


rFunction <- function(data) {
  
  if (is.null(data) || nrow(data) == 0) {
    logger.info("Input is NULL or has 0 rows — returning NULL.")
    return(NULL)
  }
  
  # if (st_crs(data)$epsg != 4326) {
  #   data <- st_transform(data, 4326)
  # }
  if (!sf::st_is_longlat(data)) data <- sf::st_transform(data, 4326)

  data$name <- as.character(mt_track_id(data))
  data$time <- mt_time(data)
  
  data_gpx <- data[!st_is_empty(data), ] 
  
  sf::st_write(data_gpx, dsn=appArtifactPath("GPX_data.gpx"), driver = "GPX", delete_dsn = TRUE, dataset_options = "GPX_USE_EXTENSIONS=YES", quiet = TRUE )
  
  return(data)
}


#st_layers("data/output/GPX_data.gpx")
#gpx <- st_read("data/output/GPX_data.gpx", layer = "waypoints")
#gpx
  
  
  
