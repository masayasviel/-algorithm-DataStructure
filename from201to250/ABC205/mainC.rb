A, B, C = gets.chomp.split.map(&:to_i)

if A > 0 && B > 0 then
    if A == B then
        puts "="
    elsif A > B then
        puts ">" 
    else
        puts "<"
    end
elsif A < 0 && B < 0 then
    if A == B then
        puts "="
    elsif A > B then
        puts "<" 
    else
        puts ">"
    end
elsif A == 0 && B == 0 then
    puts "="
else
    if C % 2 == 0 then
        if A.abs == B.abs then
            puts "="
        elsif A.abs > B.abs then
            puts ">" 
        else
            puts "<"
        end
    else
        puts A > B ? ">" : "<"
    end
end
