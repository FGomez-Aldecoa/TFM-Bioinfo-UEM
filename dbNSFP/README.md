# Ejecutando el lablog se va a crear:

Un ejecutable llamado _00_extract_col_dbNSFP_gene.sh que va a permitir extraer las columnas con información referente a los genes. Estas columnas son OMIM_id, Fuction_description,
Disease_description,HPO_id,HPO_name y van a quedar almacenadas en un archivo llamado dbNSFP_ENSG_gene_nofilter.txt

Un ejecutable llamado _01_extract_col_dbNSFP_grch37.sh que va a permitir extraer las columnas con la información del plugin. Estas columnas son: HGVSc_snpEff	HGVSp_snpEff	SIFT_score	SIFT_pred	Polyphen2_HDIV_score	Polyphen2_HDIV_pred	Polyphen2_HVAR_score	Polyphen2_HVAR_pred	MutationTaster_score	MutationTaster_pred	MutationAssessor_score	MutationAssessor_pred	FATHMM_score	FATHMM_pred	PROVEAN_score	PROVEAN_pred	VEST4_score	MetaSVM_score	MetaSVM_pred	MetaLR_score	MetaLR_pred	CADD_raw	CADD_phred	CADD_raw_hg19	CADD_phred_hg19	GERP++_NR	GERP++_RS	phyloP100way_vertebrate 	phastCons100way_vertebrate	clinvar_trait	clinvar_id	clinvar_OMIM_id	clinvar_Orphanet_id. La información de las mismas quedara almacenada en un archivo llamado dbNSFP_ENSG_plugin_nofilter.txt

Dos ejecutables llamados _02_filter_empty_gene.sh y _03_filter_empty_grch37.sh que van a filtrar en los dos archivos extraídos todas aquellas columnas que tengan el Ensembl_id vacío. Después del 
filtrado se van a obtener dos archivos: dbNSFP_ENSG_gene_filter.txt y dbNSFP_ENSG_plugin.txt

Un ejecutable llamado _04_RenameColumn_dbNSFP_gene_filter.sh que van a cambiar el nombre de la columna #chr por chr y hg19_pos(1-based) por hag19_pos mediante un script de R llamado dbNSFP_ENSG_gene_filter_RenameColumn.R. El archivo resultante es dbNSFP_ENSG_gene_GRCh37.txt

Un ejecutable llamado _05_RenameColumn_dbNSFP_plugin.sh que van a cambiar el nombre de la columna #chr por chr y hg19_pos(1-based) por hag19_pos. El archivo resultante es dbNSFP_ENSG_plugin_hg19.txt


Los archivos dbNSFP_ENSG_gene_GRCh37.txt y dbNSFP_ENSG_plugin_hg19.txt mediante un links simbólicos van a ser añadidos alas carpetas 03-annotation de exometrio y wgstrio para ser pegados a los 
resultados de VEP

Para poder extraer la información de dbNSFP es necesario cargar el módulo: R/4.2.1
