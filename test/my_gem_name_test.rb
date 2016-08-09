require 'test_helper'

class MyGemNameTest < Minitest::Test
  def setup
    @main = MyGemName::MyGemName.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::MyGemName::VERSION
  end

  def test_bmi
    assert_silent do 
      @main.calcBmi(1.68,52)
    end
    assert_output(/^Your BMI.*Your Best Weight.*/m) {@main.calcBmi(175,57)}
    assert_output(stdout=nil, "height input cm") {@main.calcBmi(1.75,57)}
  end
end
