require './controllers/form_controller.rb'
require './controllers/session_instance_controller.rb'
require './controllers/session_get_controller'

use Rack::Session::Cookie,
secret: Digest::SHA256.hexdigest(rand.to_s)

map"/" do
  run FormController.new
end

map"/session_instance" do
  run SessionInstanceController.new
end

map"/session_get" do
  run SessionGetController.new
end
