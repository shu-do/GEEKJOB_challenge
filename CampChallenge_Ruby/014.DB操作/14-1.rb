# encoding: utf-8
#db_test.rb
require 'mysql2'


client = Mysql2::Client.new(:host => 'localhost', :username => 'root', :password => 'root', :database => 'Challenge_db')

print("DB connected!")

statement = client.prepare(%q{insert into profiles(profilesID,name,tel,age,birthday) VALUES(?,?,?,?,?)})
statement.execute(6,"山田タロウ","080-1234-5678",56,"1959-12-31")
