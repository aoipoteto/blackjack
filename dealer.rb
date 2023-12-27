require "./player.rb"

class Dealer < Player
    def show_one_card
        hand.cards.first
    end
end
