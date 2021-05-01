S = gets.chomp.chars
ans = []
reverse_flag = false
 
S.each do |s|
    if s == "R" then
        reverse_flag = !reverse_flag
    else
        if ans.empty? then
            ans << s
            next
        end
        if reverse_flag then
            if ans[0] == s then
                ans.shift
            else
                ans.unshift(s)
            end
        else
            if ans[-1] == s then
                ans.pop
            else
                ans << s
            end
        end
    end
end
 
ans.reverse! if !ans.empty? && reverse_flag
 
puts ans.join("")