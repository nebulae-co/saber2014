# Saber 11

## Objetivo: determinar los grupos de municipios que merecen mayor atención por sus bajos rendimientos en las pruebas Saber 11.

## Datos: resultados a nivel individual de las pruebas Saber11 para el segundo semestre de 2014 ...

## Metodologia: 

- Breve analisis descriptivo: 
	
	* Grafica de [...]
	
	* Tabla resumen con media, cuartiles, IQR, desviación estandar.

	* ...  

- Metodo de agrupación por comparación de las funciones de distribución empiricas [bibliografia] [enlaces] ...

	* Preselección de grupos de municipios para calcular funciones empiricas. Criterio: al menos n individuos por municipio.

	* Para cada municipio calcular la f.d.p. empirica.

	* Para cada par de municipios hallar la distancia de Cramer Von Mises entre las f.d.p. empiricas.

	* A partir de la matriz de distancias realizar Ward (agrupamiento jerárquico)

	* Elegir el número de clases ara particionar los municipios y aplicar Hartigan (Kmeans)

- Con esto se tiene el agrupamiento de los municipios.

- Visualización: La metodología propone como sistema de visualización realizar un ACP sobre la matriz de todos los individuos evaluados en todas las funciones, sin embargo en este caso no es factible.

  * Construir una matriz cuyas filas corresponden a los municipios y cuyas columnas corresponden a los percentiles. Un valor ij de la matríz corresponde al percentil j del municipio i.
	* Realizar un ACP sobre la matriz de las evaluaciones de todos los individuos y se grafica mostrando el tamaño del municipio (número de colegios evaluados) y el grupo al que pertenecen usando ggplot2.





