inputs = []
mi = 0
amari = 9
5.times do |i|
    input = gets.chomp.to_i
    mod = input % 10
    if amari > mod && mod != 0
        amari = mod
        mi = i
    end
    inputs << input
end
5.times do |i|
    x = inputs[i]
    unless x % 10 == 0 || mi == i
        x = x + 10 - (x%10)
    end
    inputs[i] = x
end
puts inputs.inject(:+)