require 'test_helper'

class MyGemNameTest < Minitest::Test
  def setup
    @main = MyGemName::MyGemName.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::MyGemName::VERSION
  end

  def test_bmi
    assert_output(/^Your BMI.*Your Best Weight.*/m) {@main.calcBmi(175,57)}
    assert_output(stdout=nil, /^input your height as cm.*/m) {@main.calcBmi(1.75,57)}
  end
end
