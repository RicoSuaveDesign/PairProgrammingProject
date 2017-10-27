require 'test/unit'
require_relative 'Card'
require_relative 'InvalidCardError'

class TestCard < Test::Unit::TestCase

    def setup
        puts "Setting up card tests...."

        @c1 = Card.new(2,"Hearts")
        @c2 = Card.new(10,"Diamonds")
        @c3 = Card.new(14,"Spades")
        @c4 = Card.new(5,"Clubs")
       # @c5 = Card.new(15,"Chess")
       # @c6 = Card.new(20,"Hearts")
       # @c7 = Card.new(2,"Breath")
    end

    def teardown
        puts "Cleaning up card tests...."
    end

    def test_card
        assert_not_nil(@c1)

        assert_equal("2 of Hearts", @c1.print())
        assert_equal("A of Spades", @c3.print())
        assert_raise(InvalidCardError.new("Number 15 is invalid; try again")) {Card.new(15, "Light") }

    end

end