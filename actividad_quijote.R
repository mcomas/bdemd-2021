download.file("http://www.gutenberg.org/cache/epub/2000/pg2000.txt.utf8.gzip", 
              destfile = "pg2000.txt.utf8.gzip")
# gzfile("pg2000.txt.utf8.gzip")
quijote = scan(file = "pg2000.txt.utf8",
               what = character(), quiet = TRUE)

length(quijote)

es_barcelona = quijote == "Barcelona"
sum(es_barcelona)

quijote_sin_simbolos_puntuacion = gsub("[[:punct:]]+", "", quijote)
sum(quijote_sin_simbolos_puntuacion == "Barcelona")

sum(toupper(quijote_sin_simbolos_puntuacion) == "BARCELONA")

biblia = scan("https://raw.githubusercontent.com/kblok/RNN-bible-generator/master/biblia.txt",
              what = character(), quiet = TRUE, encoding = 'UTF-8')
biblia[1:10]
