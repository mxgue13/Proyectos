Project 3

The computer's main memory, also called Random Access Memory, or RAM, is an addressable
sequence of registers, each designed to hold an n-bit value. In this project you will gradually build a
RAM unit. This involves two main issues: (i) using gate logic to store bits persistently, over time,
and (ii) using gate logic to locate ("address") the memory register on which we wish to operate.
Objective
Build the following chips:
DFF (given)
Bit
Register
RAM8
RAM64
RAM512
RAM4K
RAM16K
PC
The only building blocks that you can use are some of the chips listed in Projects 1 and 2 and the
chips that you will gradually build on top of them in this project. The DFF chip is considered
primitive and thus there is no need to build it.

![image](https://github.com/mxgue13/Proyectos/assets/77182773/d51866e3-b8f0-417f-b864-550787df284f)

Cuando se carga en el simulador de hardware, el diseño de su chip (programa .hdl modificado),
probado en el archivo .tst suministrado, debería producir los resultados enumerados en el archivo .cmp suministrado. Si el
Las salidas reales generadas por el simulador no concuerdan con las salidas deseadas, el simulador
detenga la simulación y produzca un mensaje de error.


Estructura de la carpeta del proyecto


Al construir chips de RAM a partir de piezas de chips de RAM de nivel inferior, recomendamos utilizar
versiones de este último. De lo contrario, el simulador generará recursivamente muchos residentes en memoria.
objetos de software, uno para cada una de las muchas partes del chip que componen una unidad RAM típica, hasta el final
hasta el registro individual y los niveles de bits. Esto puede hacer que el simulador funcione lentamente o, peor aún,
quedarse sin memoria de la computadora host en la que se está ejecutando el simulador.
