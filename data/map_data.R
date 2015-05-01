## Map data

# download.file("http://biogeo.ucdavis.edu/data/gadm2/R/COL_adm2.RData", destfile = "data/map/col_map.RData")

url <- "http://sites.google.com/site/seriescol/shapes/mpio.zip"
method <- if(capabilities("libcurl")) "libcurl" else "auto"
download.file(url = url, destfile = "./map/col_map.zip", method = method)
unzip(zipfile = "./map/col_map.zip", exdir = "./map")