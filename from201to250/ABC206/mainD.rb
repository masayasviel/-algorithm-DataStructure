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

MAX = 200010
N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

if N == 1 then
    puts 0
    exit
end

first = second = nil
if N % 2 == 0 then
    first = A[0...(N/2)]
    second = A[(N/2)...N].reverse
else
    first = A[0...(N/2)]
    second = A[(N/2+1)...N].reverse
end

ans = 0
uf = UnionFind.new(MAX)

(N/2).times do |i|
    f = first[i]
    s = second[i]
    tmp_f = uf.findSet(f)
    tmp_s = uf.findSet(s)
    f = tmp_f if tmp_f != -1
    s = tmp_s if tmp_s != -1
    if f != s then
        ans += 1
        uf.unite(f, s)
    end
end

puts ans