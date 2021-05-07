def wiggle_max_length(nums)
  return nums.length if nums.length < 2
  count = 1
  i = 0
  a = nil
  while i < nums.length - 1 do
    i += 1
    next if nums[i] == nums[i - 1]
    if nums[i] > nums[i - 1]
      next if a == true
      a = true
    elsif nums[i] < nums[i - 1]
      next if a == false
      a = false
    end
    count += 1
  end
  count
end