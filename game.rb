class Game
    attr_reader :player, :dealer, :Deck
    def initialize
        @player = Player.new
        @dealer = Dealer.new
        @Deck = Deck.new
    end
    def deal_initial_cards
        2.time do
            player.hit(deck.drew)
            dealer.hit(deck.drew)
        end
    end
end
