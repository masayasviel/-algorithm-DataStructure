# https://atcoder.jp/contests/abc157/tasks/abc157_d

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

n, m, k = gets.chomp.split.map(&:to_i)
uf = UnionFind.new(n)
minus = Array.new(n, 0)
ans = []
m.times do
    a, b = gets.chomp.split.map(&:to_i)
    a -= 1
    b -= 1
    minus[a] += 1
    minus[b] += 1
    uf.unite(a, b)
end

k.times do
    c, d = gets.chomp.split.map(&:to_i)
    c -= 1
    d -= 1
    if uf.same(c, d) then
        minus[c] += 1
        minus[d] += 1 
    end
end

n.times do |i|
    ans << uf.size(i) - minus[i] - 1
end

puts ans.join(" ")