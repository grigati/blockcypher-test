require "minitest/autorun"
require_relative '../lib/main'

class TestMain < Minitest::Test
  def setup
    @main = Main.new
  end

  def test_envia_1BCY
    assert_equal true, @main.transfer(1)
  end

  def test_envia_valor_negativo
    assert_equal false, @main.transfer(-1)
  end

  def test_envia_valor_decimal
    assert_equal false, @main.transfer(0.1)
  end

  def test_envia_zero
    assert_equal false, @main.transfer(0)
  end

end
