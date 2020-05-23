class Escalier
    def initialize(arg)
        @n = arg[0].to_i
        @line = " "*(@n-1)
    end

    #just for fun :)
    def perform_v2
        @n.downto(1) do |i|
            @line.insert(i-1, 'X')
            puts @line
        end
        reset
    end

    def perform
        @n.downto(1) do |i|
            @line[i-1] = 'X'
            puts @line
        end
        reset
    end

    def reset
        @line = " "*@n
    end
end

#e = Escalier.new(ARGV)
#e.perform
#e.perform_v2