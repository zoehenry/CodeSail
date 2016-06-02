class Fractions
  attr_accessor :numerator, :denominator

  def initialize(num, denom)
    @numerator = num
    @denominator = denom
  end

  #method that returns decimal form of fraction
  def decimal
    if denominator.to_i == 0
      puts "ERROR"
    else
      x = numerator.to_f/denominator.to_f
      puts x
    end
  end

  #method that returns a string form of fraction
  def string
    if denominator.to_i == 0
      puts "ERROR"
    else
      puts numerator.to_s + "/" + denominator.to_s
    end
  end

  # method that returns reduced string form of the fraction
  def reduce
    if denominator.to_i == 0
      puts "ERROR"
    else
      min = [numerator,denominator].min
      min.downto(2) do |x|
        if numerator%x == 0 && denominator%x == 0
          n = numerator/x
          d = denominator/x
          puts n.to_s + "/" + d.to_s
          break
        end
      end
    end
  end
end
