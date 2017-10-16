# encoding: utf-8
require './controllers/form_controller.rb'
require './controllers/zakka.rb'
require './controllers/seisensyokuhin.rb'
require './controllers/otherwise.rb'
use Rack::Reloader, 0
Encoding.default_external = 'UTF-8'

map "/" do
  run FormController.new
end

map "/form_zakka" do
  run FormZakkaController.new
end

map "/form_seisensyokuhin" do
  run FormSeisensyokuhinController.new
end

map "/form_otherwise" do
  run FormOtherwiseController.new
end
