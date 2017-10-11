# encoding: utf-8
require './example.rb'
tester = Tester.new
text = tester.profile("sum")
sum = 0
for i in 1..3
  sum += i
end
print(text[1..3])
