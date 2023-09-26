# Nombre del archivo de entrada y salida
nombre_archivo <- "dbNSFP_ENSG_gene_filter.txt"
nombre_archivo_salida <- "dbNSFP_ENSG_gene_GRCh37.txt"

# Nombre de la columna que deseas cambiar
nombre_columna_actual <- "Ensembl_gene"
nuevo_nombre_columna <- "Gene"

# Leer el archivo de texto en un data frame
datos <- read.csv(nombre_archivo, header = TRUE, sep = "\t", quote = "")

# Obtener los nombres de las columnas actuales
nombres_columnas <- colnames(datos)

# Reemplazar el nombre de la columna
nombres_columnas[nombres_columnas == nombre_columna_actual] <- nuevo_nombre_columna

# Actualizar los nombres de las columnas en el data frame
colnames(datos) <- nombres_columnas

# Guardar el data frame con los nombres de columnas actualizados en un nuevo archivo de texto
write.table(datos, file = nombre_archivo_salida, sep = "\t", quote = FALSE, row.names = FALSE)

cat("Archivo guardado con el nombre de columna actualizado.\n")

