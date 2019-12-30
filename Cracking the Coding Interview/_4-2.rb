# 昇順にソートされたすべての要素が異なる配列が与えられたとき、高さが最小となる二分探索木を作る

class Node
    attr_reader :value
    attr_accessor :left, :right
    def initialize(value)
        @value = value
        @left = nil
        @right = nil
    end
end

class BinarySearchTree
    def initialize
        @root = nil
    end
    def insert(data)
        if @root == nil
            @root = Node.new(data)
            return
        end
        current = @root
        while true
            if current.value > data
                if current.left == nil
                    current.left = Node.new(data)
                    return
                end
                current = current.left
            elsif current.value <= data
                if current.right == nil
                    current.right = Node.new(data)
                    return
                end
                current = current.right
            else
                puts "Error"
                return
            end
        end
    end
    # 確認用の幅優先探索
    def bfs
        arr = []
        queue = []
        queue << @root if @root != nil
        while !queue.empty?
            node = queue.shift()
            arr << node.value
            queue << node.left if node.left != nil
            queue << node.right if node.right != nil
        end
        return arr
    end
end

def partition(tree, arr, start, finish)
    return if finish < start
    mid = (start + finish) / 2
    tree.insert(arr[mid])
    partition(tree, arr, start, mid-1)
    partition(tree, arr, mid+1, finish)
end

def main
    input = gets.chomp.split("").map(&:to_i) # 1234567
    tree = BinarySearchTree.new
    partition(tree, input, 0, input.size-1)
    print tree.bfs
end

main