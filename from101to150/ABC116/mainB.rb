def func(x)
    if x % 2 == 0
        return (x / 2) | 0
    else
        return 3 * x + 1
    end
end
def main
    a = []
    a << gets.chomp.to_i
    count = 0
    while true
        x = a[count]
        n = func(x)
        if a.include?(n)
            puts count + 2
            exit
        end
        a << n
        count += 1
    end
end

main