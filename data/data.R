# Paquetes

url <- "https://github.com/finiterank/saber2014/raw/master/tabla.saber.tar.gz"
file <- "tabla.saber.tar.gz"
method <- if(capabilities("libcurl")) "libcurl" else "auto"
download.file(url = url, destfile = file, mode = "wb", method = method)
untar(file)

file <- sub(pattern = "tar.gz", replacement = "2014.csv", 
            x = file, fixed = TRUE)

Saber11 <- read.csv(file = file)

# head(Saber11)
# dim(Saber11)
# str(Saber11)

save(list = "Saber11", file = "Saber11.RData")