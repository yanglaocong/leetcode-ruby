def find_content_children(g, s)
  g.sort!
  s.sort!
  child = cookie = 0
  while child < g.length and cookie < s.length do
    child += 1 if g[child] <= s[cookie]
    cookie += 1
  end
  child
end