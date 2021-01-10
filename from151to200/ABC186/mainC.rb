N = gets.chomp.to_i
include_seven = 0

(1..N).each do |i|
    if i.to_s.include?("7") || i.to_s(8).include?("7") then
        include_seven += 1
    end
end

puts N - include_seven