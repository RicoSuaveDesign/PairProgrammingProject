require_relative 'InvalidCardError'
class Card

    attr_accessor(:num, :suit)
    def initialize(num, suit)

        begin
            if(num > 14 || num < 2)
                raise InvalidCardError.new("Number #{num} is invalid; try again")
            end
            if(suit != "Hearts" && suit != "Spades" && suit != "Clubs" && suit != "Diamonds")
                raise InvalidCardError.new("Suit #{suit} is not a real suit; try again")
            end
        end
        self.num = num
        self.suit = suit
    end

    def print()
        retval = ""


        if num <= 10
            if num >= 2
                retval += "#{num}"
            else
                puts "Invalid number"
            end
        else
            if num == 11
                retval += "J"
            elsif num == 12
                retval += "Q"
            elsif num == 13
                retval += "K"
            elsif num == 14
                retval += "A"
            else
                puts "Invalid number"
            end

        end

        retval += " of #{suit}"

        puts retval
        retval

    end

end