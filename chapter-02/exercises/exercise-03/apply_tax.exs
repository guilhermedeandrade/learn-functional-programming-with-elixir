apply_tax = fn price ->
  tax = 0.12
  price_with_tax_applied = price + price * tax

  IO.puts("Price: #{price_with_tax_applied} - Tax: #{tax * 100}%")
end

Enum.each([10, 50, 100, 500, 1000], apply_tax)
