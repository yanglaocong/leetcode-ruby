def can_place_flowers(flowerbed, n)
  flowerbed.each_with_index do |t, i|
    if t == 0 and (i == 0 or flowerbed[i-1] == 0) and (i == flowerbed.legth - 1 or flowerbed[i+1] == 0)
      n -= 1
      return true if n <= 0
      flowerbed[i] = 1
    end
  end
  n <= 0
end