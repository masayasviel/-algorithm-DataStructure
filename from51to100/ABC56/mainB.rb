w, a, b = gets.chomp.split(" ").map(&:to_i)
if (a <= b && b <= a+w) || (b <= a && a <= b+w)
    puts 0
    exit
end

puts [(b-a+w).abs, (a-b+w).abs].min