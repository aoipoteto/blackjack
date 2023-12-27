class Dealer
    attr_accessor :hand

    def show_one_card
        hand.cards.first
     end
  
    def initialize
      @hand = Hand.new
    end
  
    def hit(card)
      hand.add_card(card)
    end
  end
  
