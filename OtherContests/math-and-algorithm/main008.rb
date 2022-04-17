N, S = gets.chomp.split.map(&:to_i)
cards_nums = [*(1..N)]
ans = 0

(1..N).each do |i|
    boundary_index = cards_nums.bsearch_index {|x| x >= S - i}
    if boundary_index.nil? then
        ans += N
    elsif boundary_index == 0 then
        ans += 1 if cards_nums[0] + i <= S
    else
        ans += boundary_index + 1
    end
end

puts ans