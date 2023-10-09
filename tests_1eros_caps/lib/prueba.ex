defmodule Prueba do

def upcase([]), do: []
def upcase([first | rest]), do: [String.upcase(first) | upcase(rest)]
# enves de usar ifs lo que hago es ir definiendo una funcion para cada caso, el primero caso es el que la lista que estoy pasando sea
#vacia, el segundo caso es cuando la lista tiene cosas y cumple que es un string para poder hacerle String.upcase



end
