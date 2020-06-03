# https://atcoder.jp/contests/abc067/tasks/abc067_a

a, b = gets.chomp.split(" ").map(&:to_i)
if a % 3 == 0 || b % 3 == 0 then
    puts "Possible"
elsif (a + b) % 3 == 0 then
    puts "Possible"
else
    puts "Impossible"
end