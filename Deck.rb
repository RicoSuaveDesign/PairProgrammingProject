require_relative 'Card'

class Deck

    attr_accessor(:deck)

    def initialize
        @deck = []
        suits = ["Hearts", "Diamonds", "Clubs", "Spades"]

        for num in 2..14

            suits.each do |suit|
                self.deck << Card.new(num, suit)
            end

        end

    end

    def scramble

        @deck.shuffle

    end

    def deal(num)

        @deck.pop(num)

    end

    def return(cards)

        @deck.push(*cards)

    end
    

end
