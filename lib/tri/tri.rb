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
            @arr_range = @arr.slice(1 , @len - index)
            @max = @arr_range.max
            @index = @arr_range.each_with_index.max[1]
            puts "#run #{index}"
            puts "value: #{@max} / #{@index}"
            swap @arr_range.size, @index
        end
        puts @arr
    end
end

f = Tri.new(ARGV)
f.perform