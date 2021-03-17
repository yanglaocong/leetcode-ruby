def candy(ratings)
  size = ratings.length
  return 1 if size == 1
  result = Array.new(size, 1)
  ratings.each_with_index do |r, i|
    next if i == 0
    result[i] = result[i - 1] + 1 if r > ratings[i - 1]
  end
  i = size - 1
  while i > 0 do
    result[i - 1] = [result[i - 1], result[i] + 1].max if ratings[i] < ratings[i - 1]
    i -= 1
  end
  result.sum
end