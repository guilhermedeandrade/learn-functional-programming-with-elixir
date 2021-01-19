char_points = %{strength: 8, dexterity: 20, intelligence: 4}

return_points_spent_on_char = fn %{strength: str, dexterity: dex, intelligence: int} ->
  str * 2 + dex * 3 + int * 3
end

points_spent = return_points_spent_on_char.(char_points)

IO.inspect(points_spent)
