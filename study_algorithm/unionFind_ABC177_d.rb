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

n, q = gets.chomp.split(" ").map(&:to_i)
uf = UnionFind.new(n)
ans = []
q.times do |i|
    com, x, y = gets.chomp.split(" ").map(&:to_i)
    if com == 0 then
        uf.unite(x, y)
    elsif com == 1 then
        if uf.same(x, y) then
            ans << 1
        else
            ans << 0
        end
    end
end
puts ans.join(", ")