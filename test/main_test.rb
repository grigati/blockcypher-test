require "minitest/autorun"
require_relative '../lib/main'

class TestMain < Minitest::Test
  def setup
    @main = Main.new
  end
end
