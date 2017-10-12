# encoding: utf-8
require './player_class.rb'
player = Player.new
dealer = Dealer.new

player.set_card(dealer.deal)
dealer.set_card(dealer.deal)

sum1 = player.open
sum2 = dealer.open


  while player.check_sum(sum1)
     player.set_card(dealer.hit)
     sum1 = player.open
  end


while dealer.check_sum(sum2)
  dealer.set_card(dealer.hit)
  sum2 = dealer.open
end

print("player card" + player.card + "\n")
print("合計値は" + sum1.to_s + "\n")
print("dealer card" + dealer.card + "\n")
print("合計値は" + sum2.to_s + "\n")

if sum1 <= 21 && (sum1 > sum2 || sum2 > 21)
  print("playerの勝利")
end
if sum2 <= 21 && (sum2 > sum1 || sum1 > 21)
  print("dealerの勝利")
end
if sum1 == sum2
  print("引き分け")
end
