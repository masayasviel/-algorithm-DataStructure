# https://atcoder.jp/contests/nikkei2019-ex/tasks/nikkei2019ex_f

n = gets.chomp.to_i

1.upto(n) do |i|
    str = ""
    str << "a" if i % 2 == 0
    str << "b" if i % 3 == 0
    str << "c" if i % 4 == 0
    str << "d" if i % 5 == 0
    str << "e" if i % 6 == 0
    str << i.to_s if str.empty?
    puts str
end