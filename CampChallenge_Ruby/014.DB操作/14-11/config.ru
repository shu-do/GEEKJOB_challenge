require './controllers/form_controller.rb'
require './controllers/form_instance_controller.rb'


use Rack::Reloader,0
Encoding.default_external = 'UTF-8'

map "/" do
  run FormController.new
end

map "/form_instance" do
  run FormInstanceController.new
end
