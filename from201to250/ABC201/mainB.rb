N = gets.chomp.to_i
mount = [] # name, height
N.times do
    name, height = gets.chomp.split
    mount << [name, height.to_i]
end
mount.sort_by!{|x| x[1]}.reverse!
puts mount[1][0]