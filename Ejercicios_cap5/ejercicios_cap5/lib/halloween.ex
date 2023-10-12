defmodule Halloween do

def give_candy(kids) do
  ~w(chocolate jelly mint)
  |>Stream.cycle   #genera ciclo infinito
  |>Enum.zip(kids) #le paso dos listas, y me va genrando tuplas de dos elementos que estan en la misma pos
end

end
