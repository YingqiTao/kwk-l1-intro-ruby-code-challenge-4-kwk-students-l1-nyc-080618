#METHOD 1
# def least_coins(cents)
#   number_of_coins = []
#   coins_value = [25, 10, 5, 1]
#   least_coins = {}
#   remainder = cents
#   coins_value_index = 0
  
#   while remainder != 0
#     number_of_coins.push(remainder/coins_value[coins_value_index])
#     remainder = remainder % coins_value[coins_value_index]
#     coins_value_index += 1
#   end
  
#   least_coins[:quarters] = number_of_coins[0]
#   least_coins[:dimes] = number_of_coins[1]
#   least_coins[:nickels] = number_of_coins[2]
#   least_coins[:pennies] = number_of_coins[3]
  
#   return least_coins
# end

#METHOD 2 
def least_coins(cents)
  least_coins = {}
  quarters = cents/25
  cents %= 25
  
  dimes = cents/10
  cents %= 10
  
  nickels = cents/5 
  cents %= 5 
  
  pennies = cents/1 
  cents %= 1
  
  least_coins[:quarters] = quarters
  least_coins[:dimes] = dimes
  least_coins[:nickels] = nickels
  least_coins[:pennies] = pennies
  
  return cents, least_coins
end

puts least_coins(93)