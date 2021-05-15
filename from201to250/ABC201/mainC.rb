require "set"

S = gets.chomp.chars
o = S.count("o")
digit = 4

if o > digit then
    puts 0
elsif o == digit then
    puts 24
else
    ans = 0
    o_index = []
    10.times do |i|
        o_index << i if S[i] == "o"
    end

    [*0..9].repeated_permutation(digit).each do |per|
        cnt = Set.new
        batu = 0
        per.each do |i|
            cnt.add(i) if S[i] == "o"
            batu += 1 if S[i] == "x"
        end

        if o_index.all?{|v| cnt.include?(v)} && batu == 0 then
            ans += 1
        end
    end
    puts ans
end