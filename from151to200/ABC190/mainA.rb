a, b, c = gets.chomp.split.map(&:to_i)
if a != b then
    puts a > b ? "Takahashi" : "Aoki"
else
    puts c != 0 ? "Takahashi" : "Aoki"
end