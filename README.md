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

  * Crear un data.frame (Que se va a llamar ernesto) con una fila por cada municipio (depto)
  
    * Caso con pocos datos: 
      
      - Para cada municipio calcular la f.d.a. empirica.
      
      - Cada fila corresponde a la función empírica evaluada en todos los individuos.
      
      - Al final dim(ernesto) = (cuantos municipios, cuantos muchachos)
      
    * Caso con muchos datos:
      
      - Para cada municipio calcular todos los percentiles
      
      - Cada fila corresponde a todos ls percentiles de los municipios.

      - Al final dim(ernesto) = (cuantos municipios, 101)

  * Crear una matriz de distancias entre municipios.
  
    * Caso con pocos datos:
    
      - Se usa la distancia de Cramer - von Mises.
      
      - Se encuentra la integral entre las f.d.a empíricas sumando áreas de rectangulos.
      
    * Caso con muchos datos:
    
      - Se encuentra la distancia euclidiana entre los percentiles: dist(ernesto)

	* A partir de la matriz de distancias se desarrolla un agrupamiento de los municipios con una metodología mixta:
    
    - En primera instacncia se aplica un agrupamiento jerárquico de Ward.

    - El resultado se puede ver como un arbol jerarquico y el procedimiento se puede iterar para obtener una clasificacón robusta.

    - En segunda instancia se implementa un agrupamiento por $k$-medias. Para este paso necesitamos a ernesto.
    
- Visualización: la metodología propone como sistema de visualización realizar un ACP sobre ernesto.
  
	* Realizar un ACP sobre ernesto y se grafica mostrando el tamaño del municipio (número de colegios evaluados) y el grupo al que pertenecen.

- Validación: Hay que realizar pruebas de Krueskall - Wallis Sobre la clasificación.


## Abstract

Este es el abstract propuesto para la presentación en el ICFES.

El problema de la Estimación en Áreas Pequeñas es abordado desde la perspectiva de la Minería de Datos. Se realiza un recuento de los algoritmos de clasificación no supervisada con el fin de encontrar el adecuado para agrupar nubes de puntos a partir de comportamientos etocásticos. Esto premite proponer un método de agregación estocástica que, con características inferenciales, permite la estimación y modelamiento de áreas pequeñas. La aplicación a los datos del examen Saber11 es inmediata, logrando obtener modelos prescriptivos a través del tiempo por municipio y, en el caso de Bogotá, por colegio. La discusión se enfoca en la parametrización y el modelamiento estocásticos, y compara el método propuesto con las altrenativas actuales desde la perspectiva del modelo de innovación de Henderson y Clark. Se concluye favorablemente y se dan pautas para trabajo futuro.
