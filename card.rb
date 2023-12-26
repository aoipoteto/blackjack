class Card
    attr_reader :mark,:number
    def initialize(mark,number)
        @mark = mark
        @number = number
    end

    def info
        return "#{@mark}の#{@number}"
    end

    def score
        if @number == "J" || @number == "Q" || @number == "K"
            @number = 10
        elsif @number == "A"
            @number = 1
        else
            @number.to_i
        end
    end
end

