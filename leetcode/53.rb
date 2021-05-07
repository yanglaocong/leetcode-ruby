def max_sub_array(nums)
  sum = nums.min
  count = 0
  i = 0
  while  i < nums.length do
    count += nums[i]
    sum = count if count > sum
    count = 0 if count <= 0
    i += 1
  end
  sum
end