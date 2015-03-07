def time_it(label)
  start_time = Time.now
  yield
  elapsed_time = Time.now - start_time
  puts "#{label} took #{elapsed_time} seconds"
end



time_it("Sleepy code") do
  #run some code
  sleep(0.5)
end

#_______________________________

class Sensor
  def temperature
    rand(100..200)
  end

  def level
    rand(1..5)
  end
end

sensor = Sensor.new

puts "Checking water temperature..."
result = sensor.temperature < 150
if result
  puts "OK"
else
  puts "FAILED!"
end
