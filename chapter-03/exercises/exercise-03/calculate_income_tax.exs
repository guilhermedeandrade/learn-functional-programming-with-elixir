calculate_income_tax = fn salary ->
  cond do
    salary <= 2000 -> 0
    salary <= 3000 -> salary * 0.05
    salary <= 6000 -> salary * 0.10
    salary > 6000 -> salary * 0.15
  end
end

income_tax = calculate_income_tax.(2800)

IO.puts(income_tax)
