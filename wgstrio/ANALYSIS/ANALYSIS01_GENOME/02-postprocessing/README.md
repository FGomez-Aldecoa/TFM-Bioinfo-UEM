# Ejecutando el lablog se crea:

Un ejecutable llamado _01_separate_snps_indels.sh que permite separar los snps de los indels creando un vcf para cada uno de ellos, que posteriormente van a ser filtrados

Un ejecutable llamado _02_filter.sh que filtra los csv tanto de snps como indels que crear de nuevos dos vcf

Un ejecutable llamado _03_merge_vcfs.sh que mezcla los vcfs filtrados

Un ejecutable llamado _04_gzip.sh que comprime el vcf resultante de la union de los vcfs filtrados creando el archivo variants_fil.vcf.gz.tbi que va a ser usado en 03-annotation

La carpeta logs donde se van almacenar los registros de la ejecución de cada uno de los procesos realizados en los anteriores ejecutables

Para poder ejecutar estos procesos es necesario cargar los módulos: GATK/4.2.0.0-GCCcore-10.2.0-Java-11
