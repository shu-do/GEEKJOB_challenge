# encoding: utf-8
#db_test.rb
require 'mysql2'

client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => 'root', :database => 'Challenge_db')

result = client.query(%q{select * from profiles where name LIKE '%実%'})
result.each do |key|
  print(key)
end
