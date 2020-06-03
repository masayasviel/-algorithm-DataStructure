H, W, D = gets.chomp.split(" ").map(&:to_i)
A = []
H.times do
    A << gets.chomp.split(" ").map(&:to_i)
end
 
px = Array.new(H*W+1)
py = Array.new(H*W+1)
ruisekiwa = Array.new(H*W+1, 0)
 
H.times do |i|
    W.times do |j|
        px[A[i][j]] = i
        py[A[i][j]] = j
    end
end
 
((D+1)..(H*W)).each do |i|
    ruisekiwa[i] = ruisekiwa[i-D] + (px[i] - px[i-D]).abs + (py[i] - py[i-D]).abs
end
 
Q = gets.chomp.to_i
 
Q.times do
    l, r = gets.chomp.split(" ").map(&:to_i)
    puts ruisekiwa[r] - ruisekiwa[l]
end