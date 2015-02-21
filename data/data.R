# Paquetes

url <- "https://github.com/finiterank/saber2014/raw/master/tabla.saber.tar.gz"
file <- "tabla.saber."
download.file(url = url, destfile = paste0(file, "tar.gz"))
untar(file)

Saber11 <- read.csv(file = paste0(file, "2014.csv"))

# head(Saber11)
# dim(Saber11)
# str(Saber11)

save(list = "Saber11", file = "Saber11.RData")