# Script de la defensa (borrador, agrupado por pantalla)

No es para decir palabra por palabra. Es para tener claro qué se dice
en cada pantalla, en qué orden, y dónde para uno y empieza el otro.

---

## PANTALLA 0 — Morph de título

*(En pantalla mientras Wilkinson presenta. No se habla nada acá.)*

---

## PANTALLA 1 — Browser con el método de escalada

*(Avanzar del título a esta pantalla es la primera acción.)*

Ustedes leyeron el trabajo hace un mes. No se los voy a contar. Se los
voy a mostrar corriendo.

¿Cuánto de este método ejecuta este test?

*(Correr el test. Method Coverage.)*

Con Method Coverage, esto es 100%.

*(Cambiar a Statement Coverage. Correr de nuevo.)*

Con Statement Coverage, no. Una sentencia no se ejecutó nunca.

*(Cambiar a Branch Coverage. Correr de nuevo.)*

Con Branch Coverage, tampoco. El `ifTrue:` sólo tomó un valor. Hay un
`ifFalse:` que nadie escribió, y que existe igual.

*(Cambiar a Condition Coverage. Correr de nuevo, sobre el método con
condición compuesta — verificar si es el mismo método o uno nuevo.)*

Y con Condition Coverage, otra vez no. Sólo mira las condiciones, y
sólo las que están adentro de una decisión.

Cuatro criterios, cuatro respuestas. Todos con el mismo problema: sólo
ven lo que está en el texto.

*(Pausa. No demo nuevo acá.)*

¿Qué pasa si dejo de restringirme a condiciones adentro de decisiones,
y cuento cualquier expresión booleana, en cualquier lugar? Eso es
Boolean Coverage. Y para definirlo hace falta B(p): el conjunto de
todas las expresiones booleanas del programa.

B(p) es indecidible. Rice, 1953.

*(Parar. No suavizar con un anticipo de OBC. Cambiar de morph si ayuda
a que el corte se sienta.)*

---

## PANTALLA 2 — Las preguntas de la tesis

*(Puede ser la misma pantalla anterior, sin nueva demo — hablado sobre
el resultado ya visible, o un morph nuevo simple con las dos preguntas.
Definir cuál.)*

La tesis se plantea dos preguntas.

Una de implementación: si es posible construir esta herramienta usando
exclusivamente metaprogramación, con un overhead que permita usarla
mientras uno desarrolla.

Y una conceptual: cómo se extienden los criterios lógicos a un
lenguaje donde el conjunto de expresiones booleanas no es decidible
estáticamente.

*(Chequear antes: Cap. 1 dice "Condition Coverage" en esta pregunta;
verificar que coincida con Boolean Coverage / OBC antes de fijar esta
frase.)*

No voy a hacer un recorrido de la reescritura del AST. Está en el
capítulo 5 y no es lo interesante. Lo interesante es dónde se rompe, y
eso lo vamos a ver corriendo.

---

## PANTALLA 3 — Contribuciones

*(Sin slide de contribuciones — se habla sobre la pantalla del Branch,
todavía roja, o sobre la pantalla de las preguntas si se decidió
separarlas.)*

La tesis presenta cuatro contribuciones.

La primera herramienta de cobertura para Cuis, con Method, Statement,
Branch y OBC. En uso público desde 2021.

OBC: un criterio computable para lenguajes donde identificar
expresiones booleanas estáticamente es indecidible. Es la contribución
conceptual central, y es la que más tiempo se va a llevar hoy.

PackageSnapshot: un paquete independiente que permite medir la
cobertura de la propia herramienta.

Y la evaluación de las herramientas de cobertura existentes en Squeak,
Pharo y VAST, probándolas directamente.

*(Sube el morph de roadmap acá, si se usa — todavía en espera.)*

---

## PANTALLA 4 — OBC: el pivote

*(Volver al Browser, o a un morph nuevo mostrando la lista de
`#decisionSelectors`.)*

Branch funcionó hardcodeando una lista de selectores: `ifTrue:`,
`ifTrue:ifFalse:`, y algunos más. Porque Smalltalk no tiene palabras
clave para control de flujo — `ifTrue:` es un envío de mensaje, como
cualquier otro.

Y ahí está la pregunta: si es un envío de mensaje como cualquier otro,
¿por qué privilegiar esos selectores? Cualquier expresión que devuelva
un booleano está haciendo el mismo trabajo.

---

## PANTALLA 5 — OBC: definición y escalada de alcance

*(Live: condición dentro de una decisión → argumento booleano →
temporal booleana → cualquier expresión booleana. Mismo Browser,
código distinto en cada paso.)*

*(Paso 1)* Esto es una condición adentro de una decisión — lo que ya
vimos.

*(Paso 2)* Pero también funciona sobre un argumento booleano.

*(Paso 3)* Y sobre una temporal booleana.

*(Paso 4, el que importa)* Y en general, sobre cualquier expresión que
haya evaluado siempre a un booleano.

Eso es OBC: el alcance no es el texto del programa, es lo que
efectivamente se evaluó durante los tests. Lo llamo Bt(p).

Y esto es distinto del resto de los criterios que vimos: el alcance de
OBC depende del test set, no sólo del programa.

---

## PANTALLA 6 — Incomparabilidad

*(Testigo 2, pendiente de construir: dos clases con el mismo selector,
una devuelve booleano y la otra no; test set que sólo ejercita la que
devuelve booleano.)*

OBC no es más débil que Boolean Coverage, ni más fuerte. Son
incomparables.

En una dirección es simple: una expresión que ningún test ejercitó no
entra en Bt(p), así que OBC la da por satisfecha aunque Boolean
Coverage no.

En la otra dirección hace falta un ejemplo.

*(Correr el testigo 2.)*

Este selector devuelve un booleano en una clase, y otra cosa en otra.
Como no siempre devuelve booleano, no entra en B(p) — Boolean Coverage
no exige nada acá. Pero si el test set sólo ejercita el receptor que
devuelve booleano, todas las evaluaciones observadas fueron booleanas,
así que entra en Bt(p) — y OBC exige ver los dos valores.

Este caso no es un accidente. Es exactamente el que OBC está diseñado
para manejar.

---

## PANTALLA 7 — El punto ciego, resuelto

*(Fig. 4.3, `addParenthesesIfNeededTo:`.)*

Si el alcance depende de lo que se ejecutó, ¿qué pasa con el código que
nunca se corrió? ¿Se pierde?

No. Los cuatro criterios corren en simultáneo y se combinan en un solo
reporte. Lo que nunca se ejecutó queda fuera del alcance de OBC y de
Branch, pero sigue adentro del alcance estático de Statement Coverage
— y ahí se reporta en rojo. Todo nodo es analizado por algo.

Esto mitiga la dependencia del test set en la práctica. No cambia el
alcance formal del criterio: OBC sigue siendo incomparable con los
criterios estructurales.

---

## PANTALLA 8 — ¿Es esto nuevo?

*(Tabla chica: herramienta / criterio / mecanismo.)*

Squeak y VAST implementan Method Coverage, con method wrappers. Pharo
implementa Statement Coverage a nivel de nodo AST, vía Reflectivity.
Ninguno implementa Branch. Cuis no tenía nada.

Esto no es una revisión bibliográfica: corrí código pensado para
distinguir criterios en cada herramienta, y clasifiqué según la
granularidad de lo que reporta.

El antecedente más cercano está en otro lenguaje: Haskell Program
Coverage. Dos diferencias. HPC restringe el análisis a contextos de
control de flujo — guards, condiciones de if, calificadores de listas
— Boolean Coverage no tiene esa restricción de posición. Y HPC
determina su alcance de forma estática, porque el sistema de tipos de
Haskell le dice qué expresiones son booleanas. En Smalltalk eso es
indecidible. Por eso existe OBC.

---

## PANTALLA 9 — El método instrumentado

*(Lado a lado: método original vs. lo que el compilador genera.)*

Así se ve un método instrumentado. El notifier envía a un criterio
pluggable — así están implementados los distintos criterios que vieron
antes.

---

## PANTALLA 10 — El frame literal

*(Inspeccionar un `CompiledMethod` instrumentado en vivo.)*

Un método instrumentado necesita una referencia a su notifier. No
puede ser una variable global — rompería la cobertura reflexiva. No
puede modificar las clases analizadas. Entonces se compila un symbol
único como placeholder, y se reemplaza después en el frame literal.

*(Mostrar el notifier en el lugar del symbol.)*

Esto es lo que permite instrumentar sin tocar la VM.

---

## PANTALLA 11 — Optimizaciones del compilador

*(Nodo optimizado, sin rango de fuente.)*

`true ifTrue: [...]` nunca envía `#ifTrue:` — el compilador emite jumps
directamente. El nodo optimizado no tiene rango de fuente, así que no
hay dónde enganchar una notificación. La solución es
`#notOptimizedMethodNode`.

*(Pre-empt de F3, si entra en el tiempo: por qué reescritura y no
bytecode o VM — simulador rechazado por performance, VM descartada por
complejidad y volatilidad del bytecode.)*

---

## PANTALLA 12 — La paradoja reflexiva

*(Historia del crash de 2022, contada, sin demo.)*

Para medir la cobertura de la propia herramienta, hay que reemplazar
sus métodos por versiones instrumentadas. Pero esos son los métodos que
la herramienta necesita para correr. Se rompe a sí misma.

La solución: no instrumentarse a sí misma. Clonar el paquete,
instrumentar el clon, correr el análisis desde el clon. Eso es
PackageSnapshot.

Clonar de verdad significa preservar la jerarquía, las variables de
instancia, de clase, de clase-instancia, los métodos de extensión, y
reescribir las referencias internas. Shared pools no está soportado —
si aparece uno, el proceso para con un error, no produce una copia
incorrecta.

---

## PANTALLA 13 — Demo de cierre reflexivo

*(`Behavior>>basicCompile:optimizeSpecialSends:`.)*

*(Correr el análisis reflexivo sobre este método.)*

OBC amarillo acá: `doOptimizeSpecialSends` sólo se observó true. Y
Statement rojo acá: este `^nil` nunca se ejecutó.

273 métodos del modelo instrumentados, y el análisis completa igual.

---

## PANTALLA 14 — Cierre

*(Puede ser un morph nuevo simple, o hablado sin pantalla nueva.)*

El overhead es de aproximadamente un milisegundo por método
instrumentado, consistente en los dos paquetes de benchmark. Es un
trade consciente: código instrumentado auditable, independencia del
bytecode de la VM, y se reutilizan los browsers, debuggers e
inspectors de Cuis tal como están.

La comparación entre OBC y Method Coverage mezcla criterio con
mecanismo — Method Coverage usa method wrappers, el resto
instrumentación AST. Aislarlos es trabajo futuro.

La cobertura correlaciona débilmente con la detección de fallas. Esta
herramienta no es para certificar código, es para entenderlo. 100% no
es un objetivo.

*(Modo manual, si entra: una sesión manual es un test set — sus
elementos son las ejecuciones que el usuario inició — y OBC aplica sin
modificación.)*

En Cuis University desde marzo de 2021. Por cuatrimestre: alrededor de
150 en UBA/DC, 70 en FIUBA, 30 en UNQ.

---

## PANTALLA 15 — Vuelta a la pantalla 1

*(Navegar de vuelta al Browser original, mismo método, mismo resultado
rojo de Branch. No nombrar el callback.)*

Este era el método del principio.

Se puede construir esta herramienta con metaprogramación exclusiva, y
con un overhead usable. Y los criterios lógicos se extienden
definiendo el alcance por observación en runtime.

Gracias.

---

## Notas abiertas dentro del script

- Pantalla 1, paso Condition: confirmar si reusa el método de los
  pasos 1–3 o necesita uno nuevo con condición compuesta.
- Pantalla 2: decidir si las preguntas van en pantalla nueva o
  habladas sobre la pantalla anterior.
- Pantalla 3: decidir estado del roadmap morph (en espera).
- Pantalla 6: testigo de incomparabilidad todavía no construido.
- Pantalla 14: modo manual — decidido no demostrar, sólo mencionar si
  entra el tiempo; si preguntan en Q&A, ahí sí con demo.
