# Saber 11

### Nuestro Objetivo:
En este pequño repositorio queremos explorar los datos de las pruebas Saber 11 y entre otras cosas determinar los grupos de municipios que merecen mayor atención por sus bajos rendimientos en las pruebas Saber 11 a partir de una metodologia experimental.

A su vez lo usamos como proyecto de entrenamiento y aprendizaje sobre git, GitHuB y algunas cosas de R.

### Datos: 
Usamos los resultados a nivel individual de las pruebas Saber 11 para el segundo semestre de 2014. En el subdirectorio `data` hay un script `data.R` que descarga los datos desde [este repositorio](https://github.com/finiterank/saber2014/) (gracias a Javier Moreno) y los guarda como `.RData`. 

### Metodologia (o algunas cosas que queremos hacer): 

- Un breve analisis descriptivo: 
	
	* Algunas graficas de [...]
	
	* Tabla resumen con media, cuartiles, IQR, desviación estandar.

	* ...  

- Metodo de agrupación por comparación de las funciones de distribución empiricas

	* Preselección de grupos de municipios para calcular funciones empiricas. Criterio: al menos $n$ individuos por municipio.

	* Para cada municipio calcular la f.d.a. empirica.

	* Para cada par de municipios hallar la distancia de Cramer Von Mises entre las f.d.a. empiricas.

	* A partir de la matriz de distancias se desarrolla un agrupamiento de los municipios con una metodología mixta:
    
    - En primera instacncia se aplica un agrupamiento jerárquico de Ward.

	  - En segunda instancia se implementa un agrupamiento por $k$-medias con definido a partir del paso previo.
    
    - El resultado se puede ver como un arbol jerarquico y el procedimiento se puede iterar para obtener una clasificacón robusta.

- Visualización: la metodología propone como sistema de visualización realizar un ACP sobre la matriz de todos los individuos evaluados en todas las funciones, sin embargo en este caso no es factible.

  * Construir una matriz cuyas filas corresponden a los municipios y cuyas columnas corresponden a los percentiles. Un valor $(i, j)$ de la matríz corresponde al percentil $j$ del municipio $i$.
  
	* Realizar un ACP sobre la matriz de las evaluaciones de todos los individuos y se grafica mostrando el tamaño del municipio (número de colegios evaluados) y el grupo al que pertenecen.