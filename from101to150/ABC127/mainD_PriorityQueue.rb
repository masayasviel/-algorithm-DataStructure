class PriorityQueue
    attr_reader :size

    def initialize(arr = [])
        @size = arr.size
        @array = arr
        @array.unshift(nil)
        h = (@size / 2) | 0
        h.downto(1) do |i|
            maxHeapify(i)
        end
    end

    def pop
        return -(Float::INFINITY) if @size < 1
        maxv = @array[1]
        @array[1] = @array[@size]
        @size -= 1
        maxHeapify(1)
        return maxv
    end
    
    def push(e)
        @size += 1
        i = @size
        @array[i] = -(Float::INFINITY)
        return if e < @array[i]
        @array[i] = e
        while i > 1 && @array[i/2] < @array[i]
            @array[i], @array[i/2] = @array[i/2], @array[i]
            i = i / 2
        end
    end

    alias << push
    alias append push

    def top
        return @array[1]
    end

    def heap
        return @array[1..@size]
    end

    def empty?
        return @array.empty?
    end

    private

    def maxHeapify(i)
        left = 2 * i
        right = 2 * i + 1
        largest = 0
        if left <= @size && @array[left] > @array[i]
            largest = left
        else
            largest = i
        end
        if right <= @size && @array[right] > @array[largest]
            largest = right
        end
        if largest != i
            @array[i], @array[largest] = @array[largest], @array[i]
            maxHeapify(largest)
        end
    end
end
 
n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map{|n| n.to_i * (-1)}
pq = PriorityQueue.new(a)
arr = []
m.times do
    arr << gets.chomp.split.map(&:to_i)
end
arr = arr.sort_by(&:last).reverse

arr.each do |i|
    b, c = i
    b.times do
        smallest = pq.pop
        if -smallest >= c then
            pq << smallest
            break
        end
        pq << -c
    end
end
 
a = pq.heap
puts a.map{|n| n*(-1)}.inject(:+)