scores = [83,71,92,64,98,87,75,69]

high_scores = scores.select {|n| n>80}

puts high_scores

puts "-----"

low_scores = scores.reject {|n| n>80}

puts low_scores

puts "-----"

puts scores.any? { |n| n < 70}

puts "-----"

puts scores.detect {|n| n < 70}

puts "-----"

scores.select! { |score| score > 70 }
puts scores

puts "-----"

scores.reject! { |score| score.even? }
p scores