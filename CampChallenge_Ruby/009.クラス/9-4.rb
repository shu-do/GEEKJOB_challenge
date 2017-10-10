# encoding: utf-8
require './profile.rb'
profile = Profile.new
text = profile.hello
if text == true
  print("この処理は正しく実行できました")
else
  print("正しく実行できませんでした")
end
