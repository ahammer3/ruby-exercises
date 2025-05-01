def stock_picker(prices)
  return [] if prices.empty? || prices.length < 2

  min_price = prices[0]
  min_index = 0
  max_profit = 0
  best_days = []

  prices.each_with_index do |price, index|
    if price < min_price
      min_price = price
      min_index = index
    end

    profit = price - min_price
    if profit > max_profit
      max_profit = profit
      best_days = [min_index, index]
    end
  end

  best_days
end


prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
p stock_picker(prices)
