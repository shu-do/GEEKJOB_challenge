# encoding: utf-8
class Player
  def initialize
    @my_card = Array.new
  end
  def open
    return @my_card.inject(:+)
  end
  def set_card(array1)
    array1.each do |i|
      @my_card.push(i)
    end
  end
  def check_sum(sum1)
    if sum1 < 14
      return true
    else
      return false
    end
  end
  def card
         str = "[ "
         @my_card.each do |i|
               str += i.to_s + " "
         end
         str += "]"

         return str
  end
end
class Dealer < Player
  def initialize
    @card = Array.new

    4.times do
      for i in 1..13
        if i <= 10
          @card.push(i)
        else
          @card.push(10)
        end
      end
    end
    @card.shuffle!
    @dealer_card = Array.new
  end
  def deal
    return @card.slice!(0..1)
  end
  def hit
    draw_array = Array.new
         draw_array.push(@card.slice!(0))
         return draw_array
  end
  def set_card(array2)
    array2.each do |i|
      @dealer_card.push(i)
    end
  end
  def check_sum(sum2)
    if sum2 < 17
      return true
    else
      return false
    end
  end
  def open
    return @dealer_card.inject(:+)
  end
  def card
         str = "[ "
         @dealer_card.each do |i|
               str += i.to_s + " "
         end
         str += "]"

         return str
  end

end
