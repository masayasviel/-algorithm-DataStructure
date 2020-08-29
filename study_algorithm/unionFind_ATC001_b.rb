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
end

def main
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
end

main