s = gets.chomp.split("")
alphabet = [*"a".."z"]
ans = "None"
alphabet.each do |char|
    unless s.include?(char)
        ans = char
        break
    end
end
puts ans