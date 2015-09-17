def wonky_coins(n)
  #RECURRSSSIOONNN
  return 1 if n == 0
  zero_coins = []
  coins = [n]

  while coins.size > 0
    p coins
    coin = coins.pop
    coins << coin / 2
    coins << coin / 3
    coins << coin / 4
    new_zeros, coins = coins.partition { |x| x == 0 }
    zero_coins << new_zeros
  end

  zero_coins.flatten.count
end
