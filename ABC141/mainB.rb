s = gets.chomp.split("")
ans = true

s.each_with_index do |e, i|
    if (i+1) % 2 == 0
        ans = false if e == "R"
    else
        ans = false if e == "L"
    end
end

puts ans ? "Yes" : "No"