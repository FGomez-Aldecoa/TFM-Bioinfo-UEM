Un link simbólico del archivo llamado dbNSFP_ENSG_plugin_hg19.txt que contiene toda la información del plugin dbNSFP de VEP

Un link simbólico del archivo llamado dbNSFP_ENSG_gene_GRCh37.txt que contiene toda la información de los genes de la base de datos dbNSFP

Las carpetas vep, exomiser, filter_heritance y logs. En la primera se guardarán los resultados de la anotación por VEP; en la segunda se guardarán los resultados de la anotación por exomiser; en la tercera
habrá a su vez otras tres subcarpetas, donde se almacenarán los resultados de los tres tipos de exomiser que se van a realizar en este pipeline. Por último en logs van a  guardarse los registros de todos 
los procesos que se van a realizar en la carpeta 03-annotation

Los ejecutables _01 bcftools_query.sh y _01_run_bcftools.sh, el primero modifica el campo ID del vcf que se obtuvo en 02-postprocessing y lo guarda dentro de la carpeta de vep; el segundo ejecutable va a
crear una tabla de variantes (variants.table) a partir del archivo generado por el primer ejecutable y lo va a guardar de nuevo dentro de la carpeta vep.

El ejecutable _02_vep_annotation.sh, permite la anotación de las muestras de genoma completo. La diferencia con anteriores pipelines es la eliminación del comando del plugin dbNSFP, cuya información
sera añadida (junto con la informacion de los genes) en los ejecutables 03

Los ejecutables _03_Vep_plugin_dbNSFP_parse.sh y _03_awk.sh. El primer ejecutable permite eliminar todas aquellas columnas de contengan ## y cambia el nombre de la columna #Uploaded_variation por ID,
del archivo vep_annot.vcf. Además lanza la ejecución de un Script de R llamado Merge_All.R (Figura 3) que permite el pegado de las columnas extraídas de dbNSFP a través de los links simbólicos creados
en la carpeta 03-annotation y unirlas a los resultados de vep. El segundo ejecutable permite filtrar las variantes que tengan una frecuencia menor a 0,001; para ello se creó un comando que enlaza a este
con el primer ejecutable. Como resultado se van a obtener dos archivos: variants_annot_all.tab, que va a ser usado para los filtros de herencias y variants_annot_filterAF.tab que contiene las variantes
con frecuencias alélicar menores a 0,001

El ejecutable _04_exomiser.sh, que contiene la configuración con la que va a ejecutarse la anotación por exomiser. En este caso se van a realizar tres exomiser en paralelo, uno para exoma (que tiene su
configuración extraída del archivo exomiser_configfile_exome.yml), otro para genes (exomiser_configfile_genes.yml) y otro para el genoma completo (exomiser_configfile.yml)

El ejecutable _05_filter_heritance que va a tomar los resultados de exomiser, va a unirlos a variants_annot_all.tab (obtenida en el ejecutable _03_Vep_plugin_dbNSFP_parse.sh y usando las cabeceras
proporcionadas en header_vep_final_annot.txt. En este caso se van a crear quince archivos, uno para cada uno de los análisis que ha realizado exomiser y para cada tipo de herencia, los cuales serán 
almacenados en la carpeta filter_heritance

Para poder ejecutar todos los procesos es necesario cargar los módulos: CFtools/1.12-GCC-10.2.0 VEP/103.1-GCC-10.2.0 R/4.2.1 Java/17.0.2.lua
