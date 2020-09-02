# Implement your object-oriented solution here!
class SmallestMultiple
    attr_accessor :lcm

    def initialize(input)
        self.smallest_multiple(input)
    end

    def smallest_multiple(input)
        @lcm = 1
        (2..input).each do |x|
            @lcm *= x / gcd(x)
        end
    end
    
    def gcd(low)
        while low > 0
            @lcm %= low
            if @lcm == 0
                return low
            end
            low %= @lcm
        end
        return @lcm
    end
end