ans = {"AC"=> 0, "WA"=> 0, "TLE"=> 0, "RE"=> 0}
n = gets.chomp.to_i
n.times do
    s = gets.chomp
    ans[s] += 1
end

ans.each do |key, count|
    puts key + " x " + count.to_s
end