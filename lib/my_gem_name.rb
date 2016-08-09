require "my_gem_name/version"

module MyGemName
  class MyGemName
    def calcBmi(h, w)

      if h <= 3
        $stderr.print "height input cm"
        exit!
      end

      w_h = h.to_f / 100
      
      bmi = w / (w_h**2)
      best_weight = (w_h**2) * 22

      $stdout.print "Your BMI : ", bmi.round(2), "\n"
      $stdout.print "Your Best Weight : ", best_weight.round(2), "\n"
    end
  end
end
