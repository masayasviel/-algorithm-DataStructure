require 'set'
contest = Set.new(['ABC', 'ARC', 'AGC', 'AHC'])
3.times do
    contest.delete gets.chomp
end
puts contest.to_a[0]
