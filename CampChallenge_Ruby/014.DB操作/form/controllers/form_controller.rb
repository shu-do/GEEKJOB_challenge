require 'rubygems'
require 'rack'

class TimeController
  def call(env)

    Rack::Response.new(render("time.html.erb"))
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
