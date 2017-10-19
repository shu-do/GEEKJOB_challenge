# encoding: utf-8
#db_test.rb
require 'mysql2'

client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => 'root', :database => 'Challenge_db')

result = client.query(%q{update from profiles set name = '松岡修造',age = 48,birthday = '1967-11-06' where profilesID = 1})
result = client.query(%q{select * from profiles where profilesID = 1})
result.each do |key|
  print(key)
end
