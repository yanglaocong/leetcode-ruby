def partition_labels(s)
  a = {}
  p = s.split('')
  p.each_with_index do |t, i|
    a[t] = i
  end
  res = []
  e = 0
  start = 0
  p.each_with_index do |t,i|
    d = a[t]
    e = [d, e].max
    if i == e
      res << i -  start + 1
      start  = i + 1
    end
  end
  res
end
