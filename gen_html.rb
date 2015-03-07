def h1
  print "<h1>"
  print yield
  print "</h1>"
end

def h2
  print "<h2>"
  print yield
  print "</h2>"
end

def tag(tag_name)
  print "<#{tag_name}>"
  print yield
  print "</#{tag_name}>"
end


tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end


# h1 { "Breaking News!" }

# h2 { "Massive Ruby Discovered" }