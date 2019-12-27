# 二つの文字列が与えられたとき、片方がもう片方のアナグラムになっているかどうかを判定する

def anagram(input)
    a, b = input.split(" ")
    a = a.split("").sort()
    b = b.split("").sort()
    return a == b
end
str = "フランチェスカ チンカスフェラ"
puts anagram(str)