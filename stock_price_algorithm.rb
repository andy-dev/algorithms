#MAX PROFIT ALGORITHM FOR ARRAY OF STOCKS

####### Given ##########

 stock_prices_yesterday=[600,503,499,300,55]

####### Input | Output #######

  #input: stock prices, every index is the price of the stock for every minute
  #output: the best possible profit w/o shorthing

####### Key Things to Consider ######

  # 1) We cant go short, so buy_time < sell_time
  # 2) We can not buy and sell in the same minute
  # 3) What if the price goes down all day? we need to find the least possible loss?


######### CODE #########

def get_max_profit(stock_prices_yesterday)

  if stock_prices_yesterday.length < 2
    raise IndexError 'Getting a profit requires at least 2 prices'
  end

  min_price = stock_prices_yesterday[0]
  max_profit = stock_prices_yesterday[1] - stock_prices_yesterday[0]

  stock_prices_yesterday.each_with_index do |current_price,index|
    next if index == 0

    potential_profit = current_price - min_price

    if potential_profit > max_profit
      max_profit = potential_profit
    end

    if current_price < min_price
      min_price = current_price
    end
  end

  p max_profit
end

get_max_profit(stock_prices_yesterday)

### Notes
# O(n) time and O(1) space, we only loop once through the array

