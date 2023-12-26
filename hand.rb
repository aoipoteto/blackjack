class Hand
    attr_accessor :cards

    def initialize
        @cards = []
    end

    def add_card(card) 
        cards << card
    end

    def points
        aces = 0

        total = cards.inject(0) do |sum, card|
            aces += 1 if card.value == 'A' #カードがAの場合Aの数を１増やす
            sum + card.point #現在の合計ポイントにカードのポイントを加算
        end
    end

    def busted?
    end
end