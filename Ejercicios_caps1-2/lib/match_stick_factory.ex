defmodule MatchstickFactory do
  def boxes(cant) do
    cant_big = trunc(cant / 50)
    IO.inspect(cant_big, label: "cant big")
    aux = cant - cant_big * 50
    cant_medium = trunc(aux / 20)
    aux = aux - cant_medium * 20
    cant_small = trunc(aux / 5)
    aux = aux - cant_small * 5

    mi_mapa =
      Map.new([
        {:big, cant_big},
        {:medium, cant_medium},
        {:remaining_matchsticks, aux},
        {:Small, cant_small}
      ])

    IO.inspect(mi_mapa)
  end

$  # grande 50
  # mediana 20
  # chica 5

  def boxes_ultra(cant) do
    stick_in_big_box = div(cant, 50)
    stick_in_medium_box = div(rem(cant, 50), 20)
    stick_in_small_box = div(rem(rem(cant, 50), 20), 5)

    %{
      big: stick_in_big_box,
      medium: stick_in_medium_box,
      small: stick_in_small_box
    }
  end

  # ambas funciones funcionan de igual forma, pero estan implementadas de manera diferente
end
