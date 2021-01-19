calculate_income_tax = fn salary ->
  cond do
    salary <= 2000 -> 0
    salary <= 3000 -> salary * 0.05
    salary <= 6000 -> salary * 0.10
    salary > 6000 -> salary * 0.15
  end
end

user_input = IO.gets("Type your salary: $")

case Float.parse(user_input) do
  {salary, _} ->
    tax = calculate_income_tax.(salary)

    IO.puts("""
    The income tax costs $#{tax}
    And the net wage is $#{salary - tax}
    """)

  :error ->
    IO.puts("Invalid salary: #{user_input}")
end
