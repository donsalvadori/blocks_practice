scores = [83,71,92,64,98,87,75,69]

high_scores = scores.select {|n| n>80}

puts high_scores

puts "-----"

low_scores = scores.reject {|n| n>80}

puts low_scores