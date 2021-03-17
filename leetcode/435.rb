def erase_overlap_intervals(intervals)
  return 0 if intervals.size < 2
  result = 0
  intervals.sort! {|a, b| a[1] <=> b[1]}
  _end = intervals[0][1]
  intervals.each_with_index do |t, i|
    next if i == 0
    if t[0] < _end
      result += 1
    else
      _end = t[1]
    end
  end
  result
end