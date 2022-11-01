# Background

## 1.1 Introduccion de RL

El problema del aprendizaje por reforzamiento. Nociones generales.

Definicion de la interfaz de RL
- Entorno 
- Estados
- Agente
- Observaciones
- Acciones
- Recompenzas
- Objetivos

Qué es un MDP? Políticas de control y funciones de valor.

Diferentes paradigmas del algoritmos de aprendizaje por reforzamiento. Algoritmos On-Policy y Off-Policy.

Mencion al uso de Monte Carlos en los diferentes acercamientos.

El entrenamiento de algoritmos de RL consiste en la realizacion de episodios. Tipos de episodios: Discretos y Continuos.

Utilidad y aplicacion de algoritmos de RL.

## 1.2 Generalizacion en machine learning

Generalizacion. Concepto y definicion. 

La medida de la Inteligencia como la capacidad de generalizar.

Grados de generalizacion. 
- Ausente
- Local
- Flexible
- Extrema (Antropológica)
- Universal*

El objetivo del paper está en las extremas. Habilidades cognitivas generales.

Capacidad de **Generalizacion** en los algoritmos de RL. El problema de overfitting en el entrenamiento.

## 1.3 Evaluacion de algoritmos

Tipos de evaluaciones: 
- Revision humana
- Analisis en Caja-Blanca (White-Box Analysis)
- Oponencial (Peer Confrontation)
- Comparaciones (Benchmarks)

Particularmente los Benchmarks han aportado mucho mas. 

## 1.4 Una buena evaluacion de Inteligencia.

La base de la inteligencia. Los prejuicios y las experiencias.

Tipos de prejuicios y experiencias a considerar:
- **Premisas de bajo nivel**: Conocimientos sobre nuestro propio espacio sensoriomotor. Reflejos e instintos inatos.
- **Premisas de metaaprendizaje**: Rigen nuestras estrategias de aprendizaje y capacidades de adquisición de conocimientos.
- **Conocimientos previos de alto nivel**: Conocimientos sobre los objetos y fenómenos de nuestro entorno externo.

Las premisas de metraaprendizaje son objetivo de esta ciencia. Es la inteligencia en si misma. Entender como el cerebro transforma experiencias en conocimientos y habilidades.

La comparación entre dos sistemas debe ser JUSTA teniendo en cuenta los **Conocimientos previos de alto nivel** que posean. (remitir al problema de overfitting mencioado antes)

Tambien debe considerarse el **Ambito de tareas compartido** entre los sistemas a comparar. Y el grado de especializacion que son alcanzables en ese ambito.

Caracteristicas necesarias para una evaluacion de inteligencia extrema:
- Debe describir el Ambito de la evaluacion
- Replicable o Repoducible.
- No debe limitase a la habilidad en una tarea.
- Debe contener tareas no conocidas por los desarrolladores.
- Controlar la cantidad de experiencia que se brinda.
- Definir el conjunto de premisas de Conocimiento previo.
- Deberia funcionar para humanos y maquinas.
- Debe justificar la dificultad de generalizacion

## 1.5 Entornos de evaluacion de Inteligencia.

### Primeras pruebas propuestas

Las primeras ideas para evaluacion eran por Revision humana y tenian un caracter Antropocéntrico.

- **Juego de Imitación** (Test de Turing), explicacion.

- **Prueba del Café**, explicacion.

- **Pruebas psicometricas**, explicacion.

Comentar sobre la inefectividad y los problemas que trae hacer evaluaciones con supervision. (Mencionar las buenas practicas para evaluaciones de mas adelante)

### Otas propuestas de evaluación

La actual tendencia de investigadores por desarrollar algoritmos de proposito general.  

Ejemplos de algunas evaluaciones mas modernas pero no se implementaron.

- **The bica cognitive decathlon** (2004)

- **Olimpiadas de Turing** (2014)

# State of the Art

La inteligencia como capacidad de adaptacion a nuevos entornos.

## 2.1 Entornos de evaluacion de la capacidad de generalizacion en algoritmos **RL**

Los entornos de evaluacion para RL, en su mayoria se enfocan en la generalicacion local o flexible.

**The Arcade Learning Environment** (2013)

**Rogue-Gym** (2019) descripcion. Objetivos.

**Procgen** (2020) descripcion. Objetivos.

Ambito de evaluacion.

El problema con las pruebas generativas.

Resumen de estos más los otros 12 benchmarks similares que encontré y aportan ideas de lo mismo. Aqui puedo ampliar con otros ejemplos en caso de ser necesario.

## 2.2 Project MalmO (2019), un meta-entorno de pruebas.

Ambito de evaluacion.

Premisas implicitas de conocimiento.

### El benchmark del diamante en minecraft.

Descripcion.

Puntos fuertes y debiles según nuestra definición.

Posibles aplicaciones.

## 2.3 Abstraction and Reasoning Corpus (ARC) (2019)

Descripcion. Objetivos.

Ambito de evaluacion.

Descripcion de premisas de conocimientos.

Puntos débiles

Resumen y dar paso a la solucion que proponemos.

# Universal Test for Human oposing inteligen Agents (UTHOPIA)

ARC es muy bueno pero no se ajusta a los algoritmos RL.

Las tareas de proposito general capturadas en ARC carecen del concepto de tiempo. La figuracion implicita de direccion, cambios y movimiento de los humanos es dada gracias a la experiencia de estos y su capacidad de asociarla a eventos fisicos en los que está mas familiarizado.

Además ARC no es compatible para los algoritmos de RL, los cuales requieren de más interacción observacion - enviroment - accion.

Argumentamos que creemos necesario y mas justo potenciar las premisas teniendo en cuenta el efecto del tiempo. La persepcion explicita de los cambios y eventos. Y llevar las tareas a conceptos mas primitivos en terminos de aprendizaje sin descuidar la dificultad de generalizacion.

## 2.1 Que es UTHOPIA

### Descripcion y Objetivo

Es una prueba pensada tanto para humanos como para agentes inteligentes. Asumimos Core Knowlege basales.

El ambito de evaluacion se encuentra en la resolucion de tareas en forma de Juegos con las definiciones señaladas.

### Premisas de conocimiento 

Trataremos de controlar los conocimientos previos que asumimos poseen los agentes.

**Prioridades de objetividad**
- Cohesión de los objetos
- Persistencia de los objetos
- Influencia de los objetos a través del contacto

**Números y capacidades de conteo**

**Conocimientos básicas de geometría y topología**
Se debe reconocer la 
-  Líneas, formas rectangulares (es más probable que aparezcan formas regulares que formas complejas).
- Simetrías (por ejemplo, la figura 11), rotaciones, traslaciones.
- Aumento o disminución de la forma, distorsiones elásticas.
- Contener / ser contenido / estar dentro o fuera de un perímetro.
- Trazado de líneas, conexión de puntos, proyecciones ortogonales.