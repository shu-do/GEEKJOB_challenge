# encoding: utf-8
require 'rubygems'
require 'rack'

class HelloController
  def call(env)
    Rack::Response.new(render("factoring.html.erb"))
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
