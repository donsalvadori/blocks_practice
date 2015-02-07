class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

frequent_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
puts frequent_flyers

infrequent_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
puts infrequent_flyers

puts flyers.any? {|flyer| flyer.status == :platinum}

first_bronze_flyer = flyers.detect { |flyer| flyer.status == :bronze }
puts first_bronze_flyer

puts "----"

platinum_flyers, coach_flyers = flyers.partition {|f| f.status == :platinum} 

puts platinum_flyers
puts "----"
puts coach_flyers

puts "----"

name_tag = flyers.map {|f| "#{f.name.capitalize} (#{f.status.upcase})"}
p name_tag

# flyers = []

# 1.upto(5) do |n|
#   flyers << Flyer.new("Flyer #{n}", "flyer#{n}@example.com", n * 1000)
# end

# flyers.each do |f|
#   puts "#{f.name} - #{f.miles_flown} miles"
# end

# total = 0

# flyers.each do |f|
#   total+= f.miles_flown
# end

# puts "Total miles flown: #{total}"

# promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

# promotions.each do |k,v|
#   puts "Earn #{v}x miles by flying #{k}!"
# end

# flyers.each do |flyer|
#   promotions.each do |airline, multiplier|
#     puts "#{flyer.name} could earn #{flyer.miles_flown * multiplier} miles by flying #{airline}!"
#   end
# end

