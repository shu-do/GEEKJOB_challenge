# encoding: utf-8
require './tester.rb'
tester = Tester.new
text = tester.profile("3")
print(text[1..3])
