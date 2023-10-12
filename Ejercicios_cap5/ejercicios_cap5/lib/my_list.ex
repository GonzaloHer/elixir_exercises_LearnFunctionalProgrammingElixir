defmodule MyList do
  @spec each(list(), any()) :: nil
  # le paso una lista y una funcion, itero por la lista y la funcion hace algo a cada elemento de la lista.
  def each([], _function), do: nil

  def each([head | tail], function) do
    function.(head)
    each(tail, function)
  end

  # se crea una nueva lista con los datos modificados por "function".
  def map([], _function), do: []

  def map([head | tail], function) do
    [function.(head) | map(tail, function)]
  end

  @spec reduce(list(), any(), any()) :: any()
  # tranforma una lista en un solo valor.
  def reduce([], acc, _function), do: acc

  def reduce([head | tail], acc, function) do
    # a function la llamamos como function.(par1, par2) pq es una funcion anonima, las funciones anonimas se llaman asi
    reduce(tail, function.(head, acc), function)
  end

  def filter([], _function), do: []

  def filter([head | tail], function) do
    if function.(head) do
      [head | filter(tail, function)]
    else
      filter(tail, function)
    end
  end
end

# al poner _function, es lo mismo que solo poner _ solo que escribiendo function estoy indicando que por ahi pasa la funcion
