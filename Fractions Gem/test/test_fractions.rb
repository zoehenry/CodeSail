require 'minitest/autorun'
require 'fractions'

class FractionTest < Minitest::Test


  def test_decimal
    @a = Fractions.new(2,4)
    assert_equal(0.5, @a.decimal)
  end

  def test_string
    @a = Fractions.new(2,4)
    assert_equal("2/4", @a.string)
  end

  def test_simplify
    @a = Fractions.new(2,4)
    assert_equal("1/2", @a.reduce)
  end
end
