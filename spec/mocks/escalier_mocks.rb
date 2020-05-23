class EscalierMocks
    def initialize(arg)
        @n = arg.to_i
    end

    def perform
        system("ruby lib/escalier/escalier.rb #{@n} >> tmp/escalier.log")
    end
end