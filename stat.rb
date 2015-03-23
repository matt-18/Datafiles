f = File.new("./HPI.csv")

data_string = f.read

f.close

data_points = data_string.split("\r")

e = 0

data_points.each do |data_point|

  data_points_values = data_point.split(",")

  data_value = data_points_values[9].to_f

  e = e + data_value

end

average = e/data_points.count

puts "Average"

puts average

e = 0
data_points.each do |data_point|

  data_points_values = data_point.split(",")

  data_value = data_points_values[9].to_f

  e = e + (data_value-average)**2

end

standarddeviation = Math.sqrt(e/data_points.count)

puts "Standard Deviation"

puts standarddeviation