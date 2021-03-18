def partition_labels(s)
  a = {}
  s = s.split('')
  s.each_with_index do |t, i|
    a[t] = i
  end
  a.keys.each do |t|
  end
end


s = "ababcbacadefegdehijhklij"
partition_labels(s)
输出：[9,7,8]
解释：
划分结果为 "ababcbaca", "defegde", "hijhklij"。