class Majuscule
    def initialize(arg)
        @sentence = arg[0].dup
    end

    #def which_case(letter)
    #    case letter
    #    when /[[:upper:]]/ then true
    #    when /[[:lower:]]/ then false
    #    else nil
    #    end
    #end

    def preform
        length = @sentence.length - 1
        u = 1
        puts @sentence
        for i in (0..length) do
            u == 1 ? @sentence[i] = @sentence[i].upcase : @sentence[i] = @sentence[i].downcase
            u = u*(-1)
        end
        puts @sentence
    end
end

m = Majuscule.new(ARGV)
m.preform