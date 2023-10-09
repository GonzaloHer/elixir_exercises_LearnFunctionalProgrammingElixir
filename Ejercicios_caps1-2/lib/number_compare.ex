defmodule NumberCompare do
  def greater(number, other_number) do
    check(number >= other_number, number, other_number)
  end

  defp check(_, _), do: "Error"
  defp check(true, number, _), do: number
  defp check(false, _, other_number), do: other_number

  # defp define una funcion privada, osea solo se puede usar en el modulo, en este caso son usadas para implementar greater que si se puede llamar desde afuera
  # las diferentes firmas de la funcion, evaluan los casos posibles y hacen pattern matching con los datos que le pasamos
  # puedo llamar a las funcion con menos parametros de los que tiene en check, (la llamada de la parte de arriba) lo unico es que tengo que tener definida la funcion con menos parametros

  defmodule NumberCompare do
    def greater(number, other_number) when number >= other_number, do: number
    def greater(_, other_number), do: other_number
  end
 # podemos crear las guardas con la palabra reservada "when", en este caso hicimos lo mismo que antes, usando la palabra "when".
 # cuando la guarda es true, entonces se ejecuta esa funcion, si es false va tratar de ejecutar la funcion siguiente




  # def hello() do
  #   "Hola Anonimo"
  # end

  # def hello(name) do
  #   "Hola #{name}"
  # end

  def hello(year, name \\ "Santiago", last_name \\ "Exposito") do
    "Hola #{name} #{last_name} #{years}"
  end

  # aca estamos usando los valores por defecto, en el caso de que no se pongan atributos en los parametros ==> se ponen los valores por defecto
end
