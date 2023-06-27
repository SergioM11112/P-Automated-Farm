# Granja Automatizada
![imágen del proyecto](Imágenes/Proyecto.png)

# Contenido
## Presentación equipo de Trabajo


### Presentado por:

Felipe Cubillos

Laura Alejandra Páez

Sergio Andres Moreno


### Docentes:

Diego Alexander Tibaduiza

Johnny Cubides


### Asignatura:

Electrónica Digital I


### Departamento:

Ingeniería Eléctrica y Electrónica


### Institución:

Universidad Nacional de Colombia

## Descripción General

A lo largo de este repositorio en **GitHub** se exhibirán una serie documentos, archivos de audio y video, archivos en VHDL y otra serie de elementos que condensan el trabajo realizado por parte de algunos estudiantes de la *Universidad Nacional de Colombia*, para la asignatura de *Electrónica Digital I- semestre 2023-1*, el cuál se enfocó en el desarrollo de un sistema de protección para animales de granja (especifícamente para granjas lecheras) en caso de estar expuestos a situaciones climáticas extremas,  el cuál tiene por nombre ***Granja Automatizada***. De manera que sea posible poner en práctica los conocimientos adquiridos a lo largo del curso en contextos dónde es de gran importancia su implementación, como lo es el el sector agropecuario de Colombia, influyendo así en la revolución tecnológica en el campo. 

## Identificación del Problema y alcance

El cambio climático ha sido uno de las mayores problemáticas a lo largo de los últimos años.Y, como consecuencia de esto, las condiciones climáticas han presentado variaciones significativas al punto de  exponer a los seres vivos a condiciones extremas de temperatura que perjudican su bienestar. 

Estas situaciones han provocado a su vez diversas afecciones en sectores de gran importancia económica para nuestra nación como lo es el sector agropecuario, pues varios ganaderos, lecheros y demás promotores de la producción animal han sido los más perjudicados debido a la poca adaptación de muchas de sus especies a estos cambios climáticos. Llegando a provocar un sin número de enfermedades y pérdidas económicas, impidiendo un progreso efectivo para el sector del agro colombiano. 

Por este motivo, y con el fin de contrarrestar estos efectos, se pensó en desarrollar un sistema de protección automático para los animales de granja (específicamente para aquellos animales que pertenecen al sector ganadero y lechero) que los resguarde ante cambios climáticos que puedan afectarlos.
## Antecedentes 
La agricultura ha sido uno de los mayores contribuyentes en materia de crecimiento económico del país a lo largo de los años, lo que ha permitido que Colombia sea un país cuyos bienes provengan en gran medida de la tierra y el tratamiento que se le da a esta . Sin embargo, su lugar e importancia en el sector económico se ha visto perjudicada debido a la poca competitividad que esta representa a comparación con el mercado exterior, pues la poca profundización en materia tecnológica ha hecho de este un sector algo obsoleto. Sin embargo, debido a los desarrollos tecnológicos y la facilidad de acceso a estos, ha sido posible idear prácticas y métodos que mezclen ambos mundos de manera que el campesino común no vea inalcanzable la posibilidad de competir y/o hacer parte de los principales contribuyentes en la cadena de producción de bienes. 
## Diagrama de Caja Negra
![texto alternativo](Imágenes/Diagrama_de_cajas.png)  


## Diagrama de Flujo de la solución
![imágen diagrama de flujo](Imágenes/Diagrama_de_Flujo_Proyecto.png)

## Diagrama de estados (Máquina de estados) 
![imágen del proyecto estados](Imágenes/Diag_estados_V1.jpeg)

## Simulaciones 


### FMS Calor
![Sim- FMS Calor](Imágenes/Simulaciones/Sim_FSM_calor.png)

### FMS con tiempo
![Sim- FMS Calor con tiempo](Imágenes/Simulaciones/Sim_FSM_C_y_tiempo.png)

### FMS Lluvia-Frío
![Sim- FMS Lluvia](Imágenes/Simulaciones/Sim_lluvia-frío.jpg)

### Contador Vista general
![Sim- contador](Imágenes/Simulaciones/Vista_general_contador.png)


## Desarrollo proyecto

### Diseño Inicial
Para porder implemetar de manera más sencilla y visual cada uno de los 
sensores como también los actuadores, se decidió construir una maqueta de 
una granja, la cual su diseño inicial se realizo en Minecraft donde cada cubo hace
la representación de 1 cm en la realidad. 

![Montaje 1](Imágenes/Pruebas/Idea_1.png)
En la anterior imagen se puede observar la parte frontal donde se pueden ver el 
PIR como los servomotores de la puerta:

![Montaje 1_1](Imágenes/Pruebas/Ida_1.1.png)
![Montaje 1_2](Imágenes/Pruebas/Ida_1.2.png)
Las 2 imágenes anteriores se presenta una primera organización de todo lo necesario 
para su funcionamiento. 
A lo largo del montaje final se cambiaron ciertas medidas y organizaciones a las presentadas en estos diseños.
### Pruebas de montaje

Funcionamiento de los servos:
![pruebas](Imágenes/Pruebas/Prueba.jpeg)

A continuación se observa la prueba de montaje de la puerta:
[pruebas](Imágenes/Pruebas/Prueba_Puerta.mp4)

[test](https://github.com/SergioM11112/P-Automated-Farm/raw/main/Im%C3%A1genes/Pruebas/Prueba_Puerta.mp4)

[pruebas](Imágenes/Pruebas/Prueba_Puerta.mp4)

## Video del funcionamiento
Para visualizar el video por favor copee el link que se observa a continuación:

https://youtu.be/dM4KYdypnsU

## Referencias

+ https://www.scielo.cl/scielo.php?script=sci_arttext&pid=S0301-732X2008000100002#:~:text=El%20clima%20afecta%20al%20ganado,y%20el%20uso%20de%20%C3%A9sta
+ https://es.statista.com/estadisticas/1337047/valor-de-la-produccion-agricola-en-colombia/
+ https://portalechero.com/colombia-que-esta-pasando-en-realidad-con-la-produccion-de-leche-cual-es-su-futuro/










