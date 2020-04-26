sx, sy, tx, ty = gets.chomp.split(" ").map(&:to_i)
x = tx-sx
y = ty-sy
print "R" * x
print "U" * y
print "L" * x
print "D" * (y+1)
print "R" * (x+1)
print "U" * (y+1)
print "L"
print "U"
print "L" * (x+1)
print "D" * (y+1)
print "R"