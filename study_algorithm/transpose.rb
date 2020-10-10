row, column = gets.chomp.split(" ").map(&:to_i)
matrix = [*0..(row*column-1)]
transpoted_matrix = Array.new(row*column)

row.times do |i|
    column.times do |j|
        printf("%02d ", matrix[i*row + j])
    end
    puts ""
end

puts "----------"

B = 16

0.step(row, B) do |b|
    column.times do |i|
        B.times do |j|
            tmp = b + j
            x = tmp < row ? tmp : row-1
            transpoted_matrix[i * row + x] = matrix[x * column + i]
        end
    end
end

puts ""
puts "transpote"

column.times do |i|
    row.times do |j|
        printf("%02d ", transpoted_matrix[i*row + j])
    end
    puts ""
end