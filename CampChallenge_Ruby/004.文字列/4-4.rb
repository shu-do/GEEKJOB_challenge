str1 = ("きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます")
str1.gsub!(/I/,"い")
str1.gsub!(/U/,"う")
puts "str1 :" + str1
