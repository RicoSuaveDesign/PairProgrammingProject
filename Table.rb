require_relative 'Deck'
require_relative 'Player'
require_relative 'InvalidDealError'

class Table

    attr_accessor(:players, :deck)
    def initialize


        self.players = Array.new()
        self.deck = Deck.new()

    end

    def add_player(player)
        self.players << player
    end

    def deal(cards)
        begin
            if(players.length * cards > 52)
                raise InvalidDealError.new("Not enough cards for all players")
            end
        end
        for player in self.players
        player.hand.push(*self.deck.deal(cards))
        end
    end

end