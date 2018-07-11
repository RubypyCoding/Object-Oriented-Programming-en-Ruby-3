
## Atributos de una clase

Los métodos `getters` y `setters` son responsables de obtener o retornar el valor de una variable `getter` y de asignar un valor a una variable `setter`. 

```Ruby
class Car

  def initialize(brand, color) 
    @brand = brand
    @color = color
  end

  #método getter
  def brand
    @brand
  end
  
  #método setter
  def brand=(new_brand)
    @brand = new_brand
  end

end

car_1 = Car.new("MiniCooper", "Blue")

#método getter `brand` para obtener marca
p car_1.brand
#=>"MiniCooper"

#método setter `brand` para asignar nuevo valor a la marca 
car_1.brand = "Audi"

p car_1.brand
#=>"Audi"
```

#### Uso de los atributos attr_reader, attr_write y attr_accessor

Podemos reemplazar los métodos `getter` y `setter` con la declaración de atributos `attr_reader`, `attr_writer` y `attr_accessor`.

El `getter` se reemplaza con `attr_reader`:

```Ruby
class Car
  attr_reader :brand
end
```

El `setter` se reemplaza con `attr_writer`:

```Ruby
class Car
  attr_writer :brand
end
```

Los `setters` y `getters` se reemplazan con `attr_accessor`, es decir podemos tanto leer el atributo como escribirlo:

```Ruby
class Car
  attr_accessor :brand
end
``` 

Es posible manipular las variables de instancia de un objeto desde afuera de la clase con el uso de alguno de los tres tipos de atributos:


```Ruby
class Car
  attr_accessor :brand
  attr_reader :price
  attr_writer :color

  def initialize(brand, price, color) 
    @brand = brand
    @price = price
    @color = color
  end

end

car_1 = Car.new("MiniCooper", "$545000", "red")

#reading brand 
p car_1.brand
#=>"MiniCooper"
#writing brand
car_1.brand = "BMW"
#reading brand
p car_1.brand
#=>"BMW"

#reading price
p car_1.price
#=>"$545000"
#writing price
car_1.price = "$545350"
#=>...undefined method `price='...

#writing color
car_1.color = "red"
#reading color
p car_1.color
#=>...undefined method `color'...
```

## Ejercicio - Clase Door 1

Crea la clase `Door` con los métodos de instancia `open` y `close`. Esta clase tendrá los atributos `color`, `size`, asimismo se deberá poder cambiar el estado `status` de la puerta `Cerrado` y `Abierto`. No uses `attr_reader`, `attr_writer` o `attr_accessor`. 

Restricción:

- Si el status de la puerta es cerrado entonces no es posible abrir la puerta.
- Si el status de la puerta es abierto entonces es posible cerrar la puerta.
- El tamaño de la puerta no es posible cambiarlo.
- El color solamente es posible modificarlo.

Desarrolla el código basado en las pruebas `specs` correspondientes.

```Ruby
#Door class

...

```

```ruby
#Ejemplo de objeto y salida

door_1 = Door.new("green", 5)

p door_1.size
#=> 5
p door_1.status
#=> "Cerrado"
p door_1.open
#=> "Business is closed"
p door_1.close
#=> "Door is closed"

```

```ruby
#Test Driven Development - TDD
$ rspec
```

## Ejercicio - Clase Door 2

Crea la clase `Door` del ejercicio anterior sin los métodos `getters` y `setters` ¿Cómo lo harías? 

Desarrolla el código basado en las pruebas `specs` correspondientes.

```Ruby
#Door class

...

```

```ruby
#Ejemplo de objeto y salida

door_1 = Door.new("green", 5)

p door_1.size
#=> 5
p door_1.status
#=> "Cerrado"
p door_1.open
#=> "Business is closed"
p door_1.close
#=> "Door is closed"

```

```ruby
#Test Driven Development - TDD
$ rspec
```

