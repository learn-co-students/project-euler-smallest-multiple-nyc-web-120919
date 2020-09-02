# Implement your procedural solution here!
def smallest_multiple(input)
    multiple = 1
    (2..input).each do |x|
        multiple *= x / gcd(multiple, x)
    end
    return multiple
end

def gcd(high, low)
    while low > 0
        high %= low
        if high == 0
            return low
        end
        low %= high
    end
    return high
end