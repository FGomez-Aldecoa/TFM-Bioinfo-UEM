# Archivos de exometrio:

En la carpeta ANALYSIS es donde estan todos los lablogs y carpetas necesarias para realizar el análisis

En la carpeta DOC es donde se encuentra el archivo de configuración de sarek para el HPC (hpc_slurm_sarek.config), y donde posteriormente se va a crear el archivo Family.ped que va a contener la información relacionada con el pedigrí de los individuos que forman la familia

En la carpeta REFERENCES en este caso no se introducido nada

En la carpeta RESULTS tampoco se ha almacenado nada, los resultados se encuentran almacenados en la carpeta 03-annotation

En la carpeta RAW van a encontrarse los links simbólicos de los fasqc de los individuos analizados, además de los archivos bed que definen los intervalos donde se quieren anotar para el análisis de exoma, para el caso del análisis de genes estaran las posiciones que ocupan y para genoma completo no será necesario ningún bed. También en esta carpeta se añade un lista de intervalos para  poder realizar el un análisis con PICARD (que se realiza en la carpeta 99-stats)

En la carpeta TMP no ha sido necesario almacenar nada
