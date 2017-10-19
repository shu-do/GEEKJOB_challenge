class FormInstanceController
  def call(env)


request = Rack::Request.new(env)
    @params = request.params()

    Rack::Response.new(render("form_instance.html.erb"))
  end

  def render(template)
    path = File.expand_path("../../views/#{template}", __FILE__)
    ERB.new(File.read(path)).result(binding)
  end
end
