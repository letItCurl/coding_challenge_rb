class Factoriel
    def initialize(arg)
        @n = arg[0].dup.to_i
    end
    
    def perform
        puts (1..@n).to_a.inject(&:*)
    end
end

f = Factoriel.new(ARGV)
f.perform