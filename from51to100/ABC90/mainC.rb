n, m = gets.chomp.split(" ").map(&:to_i)

if n==1 && m==1 then
    puts 1
elsif n==1 then
    puts m-2
elsif m==1 then
    puts n-2    
else
    puts (n-2)*(m-2)
end