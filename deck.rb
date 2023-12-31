class Deck
    attr_reader :cards

    def initialize
        @cards = build_deck
    end

    def build_deck
        suits = %w(ハート ダイヤ クラブ スペード)
        valurs = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
        suits.product(valurs).map { |suit, value| Card.new(value,suit) }.shuffle
    end

    def draw
        cards.pop
    end
end
