n, hp = gets.chomp.split(" ").map(&:to_i)
throw_damage_table = []
max_swing_damage = 0
ans = 0

n.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    max_swing_damage = a > max_swing_damage ? a : max_swing_damage
    throw_damage_table << b
end

throw_damage_table.sort!
max_throw_damage = throw_damage_table.pop

while max_swing_damage < max_throw_damage && 0 < hp
    hp -= max_throw_damage
    ans += 1
    break if throw_damage_table.empty?
    max_throw_damage = throw_damage_table.pop
end

ans += (hp/max_swing_damage.to_f).ceil if hp > 0
puts ans