defmodule TheDarkTower do
  def capitalize_words(title) do
    title
    |> String.split()
    |> capitalize_all()
    |> join_with_whitespace()
  end

  defp capitalize_all(list) do
    Enum.map(list, &String.upcase/1)
  end

  defp join_with_whitespace(list) do
    Enum.join(list, " ")
  end
end
