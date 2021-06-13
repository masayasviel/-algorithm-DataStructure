N, Q = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i).sort

emp_cnt = [0]
ptr = 1
N.times do |i|
    emp_cnt << (A[i] - ptr) + emp_cnt[i]
    ptr = A[i]+1
end
emp_cnt.shift

ans = []

Q.times do
    k = gets.chomp.to_i
    idx = emp_cnt.bsearch_index {|x| x >= k}

    if k < emp_cnt[0] then
        ans << k
        next
    end
    
    if !idx then
        ans << A[-1] + (k-emp_cnt[-1])
    elsif emp_cnt[idx] == k then
        ans << A[idx] - 1
    else
        ans << A[idx-1] + (k-emp_cnt[idx-1])
    end
end

puts ans.join("\n")