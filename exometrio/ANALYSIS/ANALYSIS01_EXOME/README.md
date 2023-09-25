# Ejecutando el lablog se va a crear:

Un link simbolico a la carpeta 00-reads que contenía los links simbolicos de la secuencias fasqc y otro al txt samples_id

El archivo family.ped en la carpeta DOC

Un archivo csv denominado samples.csv con los datos ID del paciente, sexo, estado, muestra, carrera, y rutas a los archivos FASTQ 1 y 2

Las carpetas 01-sarek, 02-postprocessing, 03-annotation y 99-stats
(En 01-sarek se almacenarán los datos obtenidos del análisis con sarek (csv, gatk4, multiqc, pipeline_info, preprocessing, reports y variant_calling)

Un script de shell denominado sarek.sbatch con la configuración de sarek contenida en DOC

Un script llamado _01_run_sarek.sh que ejecuta sarek.sbatch y lo envia al planificador de trabajos SLURM, pudiendose supervisar el trabajo a través del comando squeue

Un script llamado _02_clean.sh (que se ejecuta después de sarek con el objetivo de eliminar carpetas innecesarias y de gran peso como son /work y /01-sarek/gatk4

Para poder ejecutar sarek es necesario cargar el módulo: Nextflow singularity
