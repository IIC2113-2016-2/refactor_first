
# Grupo 2
# Integrantes
  - Cristobal Martinez
  - Carlos Aguirre

## CodeSmell por Reek
  Usando el comando rekk encontramos los siguientes code smells
  ```
    reek
  ```

  1.- Codigo Duplicado
  2.- DuplicateMethod Call
  3.- FeatureEnvy
  4.- Too many Statements


## CodeSmell Encontrados

  - Feature Envy
    - La clase Rental debiera ser la encargadda de calcular el costo de la pelicula y no la persona. Esto es un problema (Single Responsability de SOLID) ya que no podemos reutilizar el codigo y ademas genera mucha responsabilidad para la clase.

  - Comments
    - Comentarios Innecesarios
      - Ej:
        ```
          # add frequent renter points
          frequent_renter_points += 1
          ```
  - Long Method
    - El metodo statement de la clase customer tiene mucha responsabilidades y es demasiado largo. Apenas cabe en una pagina.
    - Es malo porque es un indicio que tiene muchas responsabilidades
    - Funcionalidades debieran ser de la clase rental como por ejemplo:
        - Calcular precio
        - Calcular Bono
