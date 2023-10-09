defmodule TictactoeWinners do

def winner({
  a, a, a,
  _, _, _,
  _, _, _ }) do
    {:winner, :x}
end

def winner({
  _, _, _,
  a, a, a,
  _, _, _ }) do
    {:winner, :x}
end

def winner({
  _, _, _,
  _, _, _,
  a, a, a}) do
    {:winner, :x}
end

def winner({
  a, _, _,
  a, _, _,
  a, _, _ }) do
    {:winner, :x}
end

def winner({
  _, a, _,
  _, a, _,
  _, a, _ }) do
    {:winner, :x}
end

def winner({
  _, _, a,
  _, _, a,
  _, _, a}) do
    {:winner, :x}
end

def winner({
  a, _, _,
  _, a, _,
  _, _, a}) do
    {:winner, :x}
end

def winner({
  _, _, a,
  _, a, _,
  a, _, _ }) do
    {:winner, :x}
end


def winner(_), do: :no_winner

def play(tictactoe) do
  winner(tictactoe)
end

end

# enves de poner :x o :o uso una varible "a" para que sea generico y no tenga que hacer todos los casos para :x y todos para :o
# poniendo una varibale acepto cualquier valor
