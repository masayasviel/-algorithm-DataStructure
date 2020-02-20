require 'set'
n = gets.chomp.to_i
d = Set.new

n.times do
    d << gets.chomp.to_i
end

puts d.size