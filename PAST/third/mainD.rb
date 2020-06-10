n = gets.chomp.to_i
input = []
electronic_bulletin_board = []
nums_pattern = [
    "######...######", # 0
    ".#..######....#", # 1
    "#.####.#.####.#", # 2
    "#.#.##.#.######", # 3
    "###....#..#####", # 4
    "###.##.#.##.###", # 5
    "######.#.##.###", # 6
    "#....#....#####", # 7
    "######.#.######", # 8
    "###.##.#.######"  # 9
]
5.times do
    input << gets.chomp.split("")
end
input = input.transpose
str = []
input.each_with_index do |e, i|
    if i % 4 == 0 then
        electronic_bulletin_board << str.join("")
        str = []
        next
    end
    str << e
end

electronic_bulletin_board.shift

electronic_bulletin_board.each do |transposed_num|
    print nums_pattern.index(transposed_num)
end