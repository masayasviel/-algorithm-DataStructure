n = gets.chomp.to_i
v = gets.chomp.split(" ").map(&:to_i)

if v.all?{|i| i==v[0]}
    puts n/2
    exit
end

even = Hash.new(0)
odd = Hash.new(0)

v.each_with_index do |e, i|
    if i % 2 != 0
        odd[e.to_s] += 1
    else
        even[e.to_s] += 1
    end
end

evenMax = even.max{|x, y| x[1] <=> y[1]}
oddMax = odd.max{|x, y| x[1] <=> y[1]}

if evenMax[0] != oddMax[0]
    puts n - evenMax[1] - oddMax[1]
else
    even.delete(evenMax[0])
    odd.delete(oddMax[0])
    evenSecondMax = even.max{|x, y| x[1] <=> y[1]}
    oddSecondMax = odd.max{|x, y| x[1] <=> y[1]}
    puts [n - evenSecondMax[1] - oddMax[1], n - evenMax[1] - oddSecondMax[1]].min
end