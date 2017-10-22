require './controllers/login_controller.rb'
require './controllers/login_recuest_controller.rb'
require './controllers/touroku_controller.rb'
require './controllers/touroku_recuest_controller.rb'
require './controllers/syouhinn_controller'

use Rack::Reloader,0
Encoding.default_external = 'UTF-8'

map"/" do
  run LoginController.new
end

map"/login_recuest" do
  run LoginRecuestController.new
end

map"/touroku" do
  run TourokuController.new
end

map"/touroku_recuest" do
  run TourokuRecuestController.new
end

map"/syouhinn" do
  run SyouhinnController.new
end
