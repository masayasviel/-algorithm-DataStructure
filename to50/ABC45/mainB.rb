hash = {"a"=> "0", "b"=> "1", "c"=> "2"}
s = []

3.times do
    s << gets.chomp.gsub(/[abc]/, hash).split("").map(&:to_i)
end

ptr = s[0].shift
while !s[ptr].empty?
    ptr = s[ptr].shift
end

if ptr == 0
    puts "A"
elsif ptr == 1
    puts "B"
else
    puts "C"
end