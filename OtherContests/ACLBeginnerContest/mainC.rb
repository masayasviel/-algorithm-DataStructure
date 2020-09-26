class UnionFind
    def initialize(n)
        @parent = [*0...n]
        @rank = Array.new(n, 0)
    end
    def findSet(x)
        @parent[x] = findSet(@parent[x]) if x != @parent[x]
        @parent[x]
    end
    def same(x, y)
        findSet(x) == findSet(y)
    end
    def link(x, y)
        if @rank[x] > @rank[y] then
            @parent[y] = x
        else
            @parent[x] = y
            @rank[y] += 1 if @rank[x] == @rank[y]
        end
    end
    def unite(x, y)
        link(findSet(x), findSet(y))
    end
    def get_parent(idx)
        return findSet(idx)
    end
end

n, m = gets.chomp.split.map(&:to_i)
uf = UnionFind.new(n)
m.times do
    a, b = gets.chomp.split.map(&:to_i)
    uf.unite(a-1, b-1)
end

h = Hash.new(0)

n.times do |i|
    tmp = uf.get_parent(i)
    h[tmp] += 1
end

puts h.size-1