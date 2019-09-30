d, n=gets.chomp.split(" ").map(&:to_i);
if d == 0 then
    if n == 100 then
        puts n+1
    else
        puts n
    end
else
    if n == 100 then
        puts (100**d)*(n+1)
    else
        puts (100**d)*n
    end
end