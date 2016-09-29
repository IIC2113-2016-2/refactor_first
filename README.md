# Actividad 4-iic2113

### Integrantes

Nombre         | GitHub
-------------- | ------- 
Agustin Gomez | agomez4
Diego Sinay    | TheDG
Maria Fernada Sepulveda |  mf22    


### Code Smells

1. Switch statements
* Línea 21 `customers.rb`
* Se tiene un switch complejo.
* Solución: Controlar la condición booleana de los case en solo una, en vez de comparar uno por uno, se puede añadir directamente.

2. Data Class
* Class Rental `rental.rb`, Class Movie `movie.rb*`
* Solo se definen atributos, no contienen comportamiento.
* Solución: Dado que Ruby es un lenguaje orientado a objetos, cada una de sus clases podría tener los métodos para acceder a sus clases y modificar el modelo.

3. Shotgun Surgey
* Class Rental
* Comportamiento segmentado en varios lados, o en este caso, se le quito el comportamiento y se asigno en otra clase.
* Solución: Darle comportamiento a Rental, y no asignar todo a Costumer.

4. Long Method
* Linea 14 `customers.rb` : statement
* Statement tiene más de 10 lineas de código.
* Solución: Particionar el comportamiento de `statement`.

5. Large Class
* Class Customer
* Excesivos metodos--> Statement pertenece a algun otro objecto caja o boleta, al cliente no cliente.
* Solución: Crear una nueva clase que encapsule esta funcionalidad.








