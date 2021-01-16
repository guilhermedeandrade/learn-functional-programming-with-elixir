total_price = fn price, fee -> price + fee.(price) end

flat_fee = fn price -> 5 end
proportional_fee = fn price -> price * 0.12 end
