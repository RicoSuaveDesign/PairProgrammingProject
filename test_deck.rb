require 'test/unit'
require_relative 'Deck'

class TestDeck < Test::Unit::TestCase

    def setup
        puts "Setting up card tests...."

        @d1 = Deck.new()
        @d2 = Deck.new()

        @d1.scramble
    end

    def teardown
        puts "Cleaning up card tests...."

    end

    def test_deck

        assert_not_nil(@d1)
        assert_equal(52, @d1.deck.length())
        assert_not_equal(@d1.deck[15],@d2.deck[15])
        assert_not_equal(@d1.deck[25],@d2.deck[25])
        assert_not_equal(@d1.deck[35],@d2.deck[35])
        assert_not_equal(@d1.deck[45],@d2.deck[45])
        assert_not_equal(@d1.deck[50],@d2.deck[50])

        hand = d1.deal(10)
        assert_equal(10, hand.length)
        assert_equal(42, @d1.deck.length())
        @d1.return(hand)
        assert_equal(52, @d1.deck.length)


    end

end