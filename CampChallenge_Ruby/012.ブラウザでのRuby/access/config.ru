require './controllers/time_controller.rb'
require './controllers/session_instance_controller.rb'
require './controllers/session_get_controller.rb'

use Rack::Session::Cookie,
secret: Digest::SHA256.hexdigest(rand.to_s)

map "/" do
  run TimeController.new
end

map "/session_instance" do
  run SessionInstanceController.new
end

map "/session_get" do
  run SessionGetController.new
end
