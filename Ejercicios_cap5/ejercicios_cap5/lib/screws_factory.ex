defmodule ScrewsFactory do
  # esta seria la eager strategy
  def run(pieces) do
    pieces
    |> Enum.map(&add_thread/1)
    |> Enum.map(&add_head/1)
    |> Enum.each(&output/1)
  end

  def add_thread(piece) do
    Process.sleep(50)
    piece <> "--"
  end

  def add_head(piece) do
    Process.sleep(100)
    "o" <> piece
  end

  def output(screw) do
    IO.inspect(screw)
  end
end

# version lazy programming
defmodule ScrewsFactory2 do
  def run(pieces) do
    pieces
    |> Stream.map(&add_thread/1)
    |> Stream.map(&add_head/1)
    |> Enum.each(&output/1)
  end

  def add_thread(piece) do
    Process.sleep(50)
    piece <> "--"
  end

  def add_head(piece) do
    Process.sleep(100)
    "o" <> piece
  end

  def output(screw) do
    IO.inspect(screw)
  end
end

defmodule ScrewsFactory3 do
  @spec run(any()) :: :ok
  def run(pieces) do
    pieces
    |> Stream.chunk(2)
    |> Stream.flat_map(&add_thread/1)
    |> Stream.chunk(10)
    |> Stream.flat_map(&add_head/1)
    |> Stream.chunk(30)
    #|> Stream.map(&pack_them/1)
    |> Enum.each(&output/1)
  end

  defp add_thread(pieces) do
    Process.sleep(50)
    Enum.map(pieces, &(&1 <> "--"))
  end

  defp add_head(pieces) do
    Process.sleep(100)
    Enum.map(pieces, &("o" <> &1))
  end

  defp pack_them(pieces) do
    Process.sleep(70)

  end

  defp output(screw) do
    IO.inspect(screw)
    IO.puts(" ")
  end
end

# metal_pieces = Enum.take(Stream.cycle(["-"]), 1000)  // lo que hace es generar un cyclo de guiones y Enum.take saca 1000 de esos guiones
# ScrewsFactory3.run(metal_pieces)
