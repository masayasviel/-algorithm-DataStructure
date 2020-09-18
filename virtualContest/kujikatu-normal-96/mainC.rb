# https://atcoder.jp/contests/abc177/tasks/abc177_d

class UnionFind
    def initialize(n)
        @have_node_num = Array.new(n, -1)
    end
    def findSet(x)
        return x if @have_node_num[x] < 0
        @have_node_num[x] = findSet(@have_node_num[x])
        return @have_node_num[x]
    end
    def link(x, y)
        return if x == y
        x, y = y, x if @have_node_num[x] > @have_node_num[y]
        @have_node_num[x] += @have_node_num[y]
        @have_node_num[y] = x
    end
    def unite(x, y)
        link(findSet(x), findSet(y))
    end
    def same(x, y)
        findSet(x) == findSet(y)
    end
    def size(idx)
        return -@have_node_num[findSet(idx)]
    end
end

n, m = gets.chomp.split.map(&:to_i)
uf = UnionFind.new(n)

m.times do
    a, b = gets.chomp.split.map(&:to_i)
    uf.unite(a-1, b-1)
end

ans = 0

n.times do |i|
    tmp = uf.size(i)
    ans = tmp if tmp > ans
end

puts ans