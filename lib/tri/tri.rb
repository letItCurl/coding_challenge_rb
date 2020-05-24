class Tri
    def initialize(arg)
        @arr = arg.dup
        @sorted = []
    end
    
    def swap a, b
        @arr[a], @arr[b] = @arr[b], @arr[a]
    end

    def perform
        @len = @arr.size
        @range = (0..@len-1)
        for index in @range
            @arr_range = @arr.slice(0 , @len - index)
            @max = @arr_range.max
            puts @arr_range.join('') + " | " + @max + " | swap: " + @arr_range.index(@max).to_s + " | " + (@arr_range.size-1).to_s
            swap @arr_range.index(@max), @arr_range.size-1
        end
        puts @arr.join('')
    end
end

f = Tri.new(ARGV)
f.perform