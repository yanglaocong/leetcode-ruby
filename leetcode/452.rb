def find_min_arrow_shots(points)
  size = points.size 
  return size if size <= 1
  points.sort! {|a, b| a[1] <=> b[1]}
  a = points[0][1]
  count = 1
  points.each do |t|
    if t[0] > a
      a = t[1]
      count += 1
    end
  end
  count
end