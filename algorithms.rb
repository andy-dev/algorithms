#mac stock price algo

#given

 stock_prices_yesterday=[500,503,550,499,530]

#input | outputs

  #input: stock prices, every index is the price of the stock for every minute
  #output: the best possible profit w/o shorthing

#Pseudocode

# 1) Reverse the array, bc sell_time > buy_time
# 2) Find max
# 3) Find min
# 4) Keep an empty array and update it if max at current index + 1 is greater than current index

def max_stock_profit(stock_price_array)

   max_profit=[0]
  stock_price_array.each_with_index do |price,index|
    next_index=index+1
     profit = price - stock_price_array[4]
     p profit



    # if profit > max_profit[0]
    #   max_profit << profit
    # end
  end
  # p max_profit

end

max_stock_profit(stock_prices_yesterday)