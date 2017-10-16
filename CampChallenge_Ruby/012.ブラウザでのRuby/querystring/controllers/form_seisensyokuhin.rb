# encoding: utf-8
require 'rubygems'
require 'rack'

class FormController
  def call(env)
    Rack::Response.new(render("form_seisensyokuhin.html.erb"))
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
