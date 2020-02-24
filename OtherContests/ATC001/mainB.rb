class UnionFind
    def initialize(n)
        @parent = []
        @rank = []

        n.times do |i|
            @parent[i] = i
            @rank[i] = 0
        end
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
end

n, q = gets.chomp.split(" ").map(&:to_i)
uf = UnionFind.new(n)
q.times do |i|
    com, x, y = gets.chomp.split(" ").map(&:to_i)
    if com == 0 then
        uf.unite(x, y)
    elsif com == 1 then
        if uf.same(x, y) then
            puts "Yes"
        else
            puts "No"
        end
    end
end