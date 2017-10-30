require 'test/unit'
require_relative 'Table'
require_relative 'Player'


class Test_Table < Test::Unit::TestCase

    def setup

        @t1 = Table.new()
        @p1 = Player.new()
        @p2 = Player.new()
    end

    def teardown

    end

    def test_table
        assert_not_nil(@t1)
        assert_not_nil(@p1)

        @t1.add_player(@p1)
        @t1.add_player(@p2)
        assert_equal(2, @t1.players.length)

        @t1.deal(10)
        assert_equal(10, @p1.hand.length)
        assert_equal(10, @p2.hand.length)

        assert_raise(InvalidDealError.new("Not enough cards for all players")) {@t1.deal(40) }


    end
end