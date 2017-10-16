# encoding: utf-8
require './controllers/factoring_controller.rb'

use Rack::Reloader, 0
Encoding.default_external = 'UTF-8'

map "/" do
  run FactoringController.new
end

map "/next_page" do
  run NextPageController.new
end
