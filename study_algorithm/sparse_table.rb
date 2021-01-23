class SparseTable
    def initialize(arr)
        @arr = arr.dup
        @siz = arr.size
        @log_table = Array.new(@siz+1, 0)
        (2..@siz).each do |i|
            @log_table[i] = @log_table[i/2] + 1
        end
        @table = Array.new(@siz).map{Array.new(@log_table[@siz]+1, 0)}
        @siz.times do |i|
            @table[i][0] = i
        end
        k = 1
        while (1 << k) <= @siz do
            i = 0
            while i + (1 << k)<= @siz do
                first = @table[i][k - 1]
                second = @table[i + (1 << (k - 1))][k - 1]
                if @arr[first] < @arr[second] then
                    @table[i][k] = first
                else
                    @table[i][k] = second
                end
                i += 1
            end
            k += 1
        end
    end
    # @param 半開区間[s, t)
    # @return 最小値のインデックス
    def query(s, t)
        d = t - s
        k = @log_table[d]
        if @arr[@table[s][k]] < @arr[@table[t - (1 << k) + 1][k]]
            return @table[s][k]
        else
            return @table[t - (1 << k) + 1][k]
        end
    end
end

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
sparse_table = SparseTable.new(a)
puts sparse_table.query(1, 6)