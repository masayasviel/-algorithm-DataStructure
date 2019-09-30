def main(input)
    result = input.map(&:dup)
    checkZero(input, result)
    input = input.transpose
    result = result.transpose
    checkZero(input, result)
    result = result.transpose
    print(result)
end

def checkZero(x, y)
    x.each_with_index do |arr, index|
        if arr.include?(0) then
            y[index].fill(0)
        end
    end
end

node = [[1,2,3,4,5],
        [2,0,9,5,4],
        [1,3,5,0,6],
        [10,6,5,3,8]]

main(node)