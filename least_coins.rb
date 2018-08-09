#write out your code here

def least_coins(cents)
  number_of_coins = []
  coins_value = [25, 10, 5, 1]
  least_coins = {}
  remainder = cents
  coins_value_index = 0
  
  while remainder != 0
    number_of_coins.push(remainder/coins_value[coins_value_index])
    remainder = remainder % coins_value[coins_value_index]
    coins_value_index += 1
  end
  
  least_coins[:quarters] = number_of_coins[0]
  least_coins[:dimes] = number_of_coins[1]
  least_coins[:nickels] = number_of_coins[2]
  least_coins[:pennies] = number_of_coins[3]
  
  return least_coins

end
