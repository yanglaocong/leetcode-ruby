def max_profit(prices)
  result = 0
  buy = true
  prices.each_with_index do |t, i|
    if buy and t < prices[i + 1].to_i
      result -= t
      buy = false
    end
    if !buy and t > prices[i + 1].to_i
      result += t
      buy = true
    end
  end
  result
end

def max_profit(prices)
  result = 0
  (1...prices.length).each do |i|
    if prices[i] > prices[i - 1]
      result += prices[i] - prices[i - 1]
    end
  end
  result
end