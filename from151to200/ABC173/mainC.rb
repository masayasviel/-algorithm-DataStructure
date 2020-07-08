$ans = 0
$H, $W, $K = gets.chomp.split(" ").map(&:to_i)

def count_black_math(color)
    res = 0
    $H.times do |i|
        $W.times do |j|
            res += 1 if color[i][j] == "#"
        end
    end
    $ans += 1 if res == $K
end

color = []
$H.times do
    color << gets.chomp.split("")
end

[0, 1].repeated_permutation($H) do |row_bits|
    [0, 1].repeated_permutation($W) do |column_bits|
        c = color.map(&:dup)
        row_bits.each_with_index do |row, i|
            if row == 1 then
                $W.times do |j|
                    c[i][j] = "x"
                end
            end
        end
        column_bits.each_with_index do |column, i|
            if column == 1 then
                $H.times do |j|
                    c[j][i] = "x"
                end
            end
        end
        count_black_math(c)
    end
end

puts $ans