class SortedSet
    BUCKET_RATIO = 50
    REBUILD_RATIO = 170  
    def initialize(a=[]); build(a.uniq.sort) end
    def each; @a.each {|i| i.each {|j| yield j}} end
    def size; @size end

    def include?(x)
        return false if @a.size == 0
        a = find_bucket(x)
        i = a.bsearch_index {|y| y >= x}
        return i && a[i] == x
    end

    def add(x)
        if @size == 0
            @a = [[x]]
            @size = 1
            return true
        end
        a = find_bucket(x)
        i = a.bsearch_index {|y| y >= x} || a.size
        return false if i != a.size && a[i] == x
        a.insert(i, x)
        @size += 1
        build if a.size > @a.size * REBUILD_RATIO
        return true
    end

    def discard(x)
        return false if @size == 0 
        a = find_bucket(x)
        i = a.bsearch_index {|y| y >= x}
        return false if !i || a[i] != x
        a.delete_at(i)
        @size -= 1
        build if a.size == 0
        return true
    end
    
    def lt(x) # Find the largest element < x, or nil if it doesn't exist.
        @a.reverse_each {|a| return a[(a.bsearch_index {|y| y >= x} || a.size) - 1] if a[0] < x}
        nil
    end

    def le(x) # Find the largest element <= x, or nil if it doesn't exist.
        @a.reverse_each {|a| return a[(a.bsearch_index {|y| y > x} || a.size) - 1] if a[0] <= x}
        nil
    end

    def gt(x) # Find the smallest element > x, or nil if it doesn't exist.
        @a.each {|a| return a[a.bsearch_index {|y| y > x}] if a[-1] > x}
        nil
    end

    def ge(x) # Find the smallest element >= x, or nil if it doesn't exist.
        @a.reverse.each {|a| return a[a.bsearch_index {|y| y >= x}] if a[-1] >= x}
    end
    
    def [](x)
        x += @size if x < 0
        raise IndexError if x < 0
        @a.each {|a| return a[x] if x < a.size; x -= a.size}
        raise IndexError
    end
    
    def index(x) # Count the number of elements < x.
        ans = 0
        @a.each {|a| return ans + a.bsearch_index {|y| y >= x} if a[-1] >= x; ans += a.size}
        return ans  
    end

    def index_right(x) # Count the number of elements <= x.
        ans = 0
        @a.each {|a| return ans + a.bsearch_index {|y| y > x} if a[-1] > x; ans += a.size}
        return ans
    end
    
    private
    
    def build(a=nil)
        a ||= @a.flatten
        @size = size = a.size
        bucket_size = Math.sqrt(size / BUCKET_RATIO).ceil
        @a = (0...bucket_size).map {|i| a[size * i / bucket_size...size * (i + 1) / bucket_size]}
    end

    def find_bucket(x)
        @a.each {|a| return a if x <= a[-1]}
        return @a[-1]
    end
end

L, Q = gets.chomp.split.map(&:to_i)
sorted_set = SortedSet.new
sorted_set.add(0)
sorted_set.add(L)
Q.times do
    c, x = gets.chomp.split.map(&:to_i)
    if c == 1 then
        sorted_set.add(x)
    else
        puts sorted_set.gt(x) - sorted_set.lt(x)
    end
end
