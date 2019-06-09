require "minitest/autorun"
require_relative '../lib/main'

class TestAddress < Minitest::Test
  def setup
    @address = Address.new
  end

  def test_envia_1BCY
    assert_equal true, @address.transfer(1)
  end

  def test_envia_valor_negativo
    assert_equal false, @address.transfer(-1)
  end

  def test_envia_valor_decimal
    assert_equal false, @address.transfer(0.1)
  end

  def test_envia_zero
    assert_equal false, @address.transfer(0)
  end

end
