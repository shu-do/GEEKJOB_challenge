# encoding: utf-8
#db_test.rb
require 'mysql2'

client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => 'root', :database => 'Challenge_db')

result = client.query(%q{update profiles set name = '松岡修造', age = 48, bithtday = '1967-11-06',where profilesID = 1})
