n = gets.chomp.to_i
alphabet = ["a", "b", "c", "d", "e", "f", "g",
    "h", "i", "j", "k", "l", "m", "n",
    "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
ans = []
 
while n > 0
    ans << alphabet[n % 26 - 1]
    n -= 1 if n % 26 == 0
    n /= 26
end
     
puts ans.reverse.join("")