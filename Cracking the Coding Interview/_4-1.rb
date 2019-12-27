# 0からNまでの番号がついたN個の頂点をもち、M辺ある有向グラフが与えられたとき,
# AとBのノード間に経路があるかを判定する

# Nは頂点数、Mは辺数
# aiからbiへの辺がある
# Aが始点、Bが終点

=begin
以下の形式で与えられるものとする。
N M
a0 b0
a1 b1
・・・
am-1 bm-1
A B
=end

n, m = gets.chomp.split(" ").map(&:to_i)
graph = Array.new(n).map{Array.new}

m.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    graph[a] << b
end

a, b = gets.chomp.split(" ").map(&:to_i)
flag = Array.new(n, false)
queue = [a]

while !queue.empty?
    v = queue.shift()
    flag[v] = true
    graph[v].each do |e|
        if e == b
            puts "Yes"
            exit
        end
        next if flag[e]
        queue.push(e)
    end
end

puts "No"