class PriorityQueue
    def initialize(arr)
        @size = arr.size
        @array = arr
        @array.unshift(nil)
        h = (@size / 2) | 0
        h.downto(1) do |i|
            maxHeapify(i)
        end
    end
    def getArray
        return @array[1..@size]
    end
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
    def pop
        return -(1<<29) if @size < 1
        maxv = @array[1]
        @array[1] = @array[@size]
        @size -= 1
        maxHeapify(1)
        maxv
    end
    def push(e)
        @size += 1
        i = @size
        @array[i] = -(1<<29)
        return if e < @array[i]
        @array[i] = e
        while i > 1 && @array[i/2] < @array[i]
            @array[i], @array[i/2] = @array[i/2], @array[i]
            i = i / 2
        end
    end
end

n, k = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)

if n > k
    pq = PriorityQueue.new(h)
    k.times do |i|
        pq.pop
    end
    puts pq.getArray.inject(:+)
else
    puts 0
end