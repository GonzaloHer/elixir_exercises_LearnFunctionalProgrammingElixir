defmodule RPGGame do
  def total_points(qualities) do
    strenght_points = qualities.strenght *2
    dexterity_points = qualities.dexterity*3
    intelligence_points = Map.get(qualities.intelligence)

    total = strenght_points + dexterity_points + intelligence_points

  end
end

defmodule RPGGame2 do
  def calculate_attributes(character) do
    %{
      strength: character.strength * 2,
      dexterity: character.dexterity * 3,
      intelligence: character.intelligence
    }
  end

  def sum_values(%{strength: s, dexterity: d, intelligence: i}) do
    s + d + i
  end

  def display_stats(character) do
    character
    |> calculate_attributes()
    |> sum_values()
  end
end
